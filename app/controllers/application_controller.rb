class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  add_flash_types :alert2

  def after_sign_up_path_for(resource)
    redirect_to new_profile_path
  end
end