class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_session


  def set_session
    session[:test1] ||= 2
    session[:test2] ||= 4
  end
end
