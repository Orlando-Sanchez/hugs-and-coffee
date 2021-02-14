class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  add_flash_types :alert2


  private

  def record_not_found
    #falta notificacion
    #de que esa pagina no existe
    redirect_to(root_url)
  end
end
