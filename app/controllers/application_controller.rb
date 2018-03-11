class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # 以下のコメントアウトしている機能はdeviseの導入により消え去った機能です
  
  #respond_to :html, :json
  #before_action :set_current_user
  before_action :configure_permitted_parameters, if: :devise_controller?

  #def set_current_user
  #  @current_user = User.find_by(id: session[:user_id])
  #end
  
  def authenticate_user
    if user_signed_in?
    else
      flash[:notice] = "ログインが必要です。"
      redirect_to("/users/sign_in")
    end
  end
  
  #def forbid_login_user
  #  if @current_user
  #    flash[:notice] = "すでにログインしています。"
  #    redirect_to("/")
  #  end
  #end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :postal_code, :address, :phone_number])
  end
  
end
