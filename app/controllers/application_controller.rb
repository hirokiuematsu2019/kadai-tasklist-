class ApplicationController < ActionController::Base
  
  include SessionsHelper
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to  toppages_index_url
    end
  end
end