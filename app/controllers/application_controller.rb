class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  add_flash_types :alert2


  def after_sign_up_path_for(resource)
    redirect_to new_profile_path
  end

  private

  def record_not_found
    redirect_to root_url, alert2: "Página no encontrada"
  end
end