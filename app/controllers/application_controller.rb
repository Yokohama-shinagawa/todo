class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # ログイン済ユーザーのみにアクセスを許可
  before_action :authenticate_user!

  # deviseコントローラーにストロングパラメータを追加        
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  before_action :set_session
  
  def set_session
    if current_user
      session[:user_middle] = current_user.middle
    end
  end

  protected
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image])
    # アカウント編集の時にnameとprofileのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image])
  end

end


