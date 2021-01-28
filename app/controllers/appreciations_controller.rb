class AppreciationsController < ApplicationController
  def select
    @profile = Profile.find(params[:id])
  end

  def coffee
    @profile = Profile.where('id = ?', params[:id]).first
    @appreciation = Appreciation.new(user_id: @profile.user.id)
    @monetary_accounts = MonetaryAccount.where(user_id: @profile.user.id)
    @multipliers = @profile.multipliers
  end

  def create
    @appreciation = Appreciation.new(coffee_appreciation_params)
    @appreciation.appreciation_kind = 1
    @appreciation.save
  end

  def hug_create
    @appreciation = Appreciation.new(hug_appreciation_params)
    @appreciation.appreciation_kind = 2
  end

  def hug
    @profile = Profile.find(params[:id])
  end

  def thanks
    @profile = Profile.find(params[:id]) 
  end

  private

  def coffee_appreciation_params
    
  end
end