class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def current_user
    token = request.headers['Auth-Token']
    token && User.find_by(auth_token: token)
  end

  def authenticate_user!
    unless current_user
      token = request.headers['Auth-Token']
      render json: { error: "Could not authenticate with token:'#{token}'" },
        status: :unauthorized
    end
  end
end
