class AppreciationsController < ApplicationController
  def select
    @profile = Profile.find(params[:id])
  end

  def hug
    @profile = Profile.find(params[:id])
    @appreciation = Appreciation.new(user_id: @profile.user.id)
  end

  def hug2
    @profile = Profile.find(params[:id])
    @appreciation = Appreciation.new(hug_appreciation_params)
  end

  def hug_create
    @profile = Profile.find(params[:id])
    @user = User.where('id = ?', @profile.user.id).first
    @appreciation = Appreciation.new(hug_appreciation_params2)
    @appreciation.appreciation_kind = 0
    @appreciation.user = @user
  end

  def coffee
    @profile = Profile.find(params[:id])
    @appreciation = Appreciation.new(user_id: @profile.user.id)
    @monetary_accounts = MonetaryAccount.where(user_id: @profile.user.id)
    @multipliers = @profile.multipliers
  end

  def coffee_create
    @profile = Profile.find(params[:id])
    @user = User.where('id = ?', @profile.user.id).first
    @appreciation = Appreciation.new(coffee_appreciation_params)
    @appreciation.appreciation_kind = 1
    @appreciation.user = @user
    if @appreciation.save
      redirect_to thanks_url
    else
      redirect_to coffee_url, alert2: "No se pudo crear el agradecimiento"
    end
  end

  def thanks
    @profile = Profile.find(params[:id]) 
  end

  private

  def coffee_appreciation_params
    params.require(:appreciation).permit(:donor_fullname, :donor_occupation, :donor_message, :coffees_quantity)
  end

  def hug_appreciation_params
    params.require(:appreciation).permit(:hug_seconds)
  end

  def hug_appreciation_params2
    params.require(:appreciation).permit(:donor_fullname, :donor_occupation, :donor_message, :hug_seconds)
  end
end