class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :toggle_profile]
  before_action :is_published,       only: :show
  
  def new
    if current_user.profile.present?
      redirect_to root_url, notice: "Ya existe el perfil"
    else     
      @profile = Profile.new
      count =0
      3.times do |time|
        count += 1
        @profile.multipliers.build(quantity: count)
      end
      @profile.multipliers.build(quantity: 5)
    end
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to edit_profile_url(@profile), notice: "¡Tu perfil ha sido creado!"
    else
      redirect_to new_profile_url, alert2: "No se pudo crear el perfil"
    end
  end

  def show
    @profile = Profile.where('id = ?', params[:id]).first
    @user = User.where('id = ?', @profile.user.id).first
    @publications = @profile.publications.all
    @appreciations = @user.appreciations.all
  end
  
  def edit
    if current_user.profile.present?
      @profile = current_user.profile
    else
      redirect_to new_profile_url 
    end
  end

  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      redirect_to edit_profile_url, notice: "El perfil ha sido actualizado"
    else
      redirect_to edit_profile_url, alert2: "No se pudo actualizar el perfil"
    end
  end

  def toggle_profile
    @profile = Profile.where('id = ?', params[:id]).first
    result = @profile.update(is_published: params[:is_published])
    render json: { profile: @profile, result: result }
  end

  private

  def profile_params
    params.require(:profile).permit(:fullname, :occupation, :biography, :coffee_price, :currency_sign, :avatar, multipliers_attributes: [:id, :quantity])
  end

  def is_published
    @profile = Profile.where('id = ?', params[:id]).first
    redirect_to(root_url, notice: "El perfil buscado no existe") unless @profile&.is_published
  end
end