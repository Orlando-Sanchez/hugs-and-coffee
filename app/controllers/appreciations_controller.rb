class AppreciationsController < ApplicationController
  def select
    @profile = Profile.find(params[:id])
  end

  def hug
    @profile = Profile.find(params[:id])
  end

  def hug_create
    @appreciation = Appreciation.new(hug_appreciation_params)
    @appreciation.appreciation_kind = 0
  end

  def coffee
    @profile = Profile.where('id = ?', params[:id]).first
    @appreciation = Appreciation.new(user_id: @profile.user.id)
    @monetary_accounts = MonetaryAccount.where(user_id: @profile.user.id)
    @multipliers = @profile.multipliers
  end

  def coffee_create
    @profile = Profile.where('id = ?', params[:id]).first
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
end