class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # def authenticate_user!
  #   redirect_to(new_user_session_path, alert: "Please login") unless user_signed_in?
  # end
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
