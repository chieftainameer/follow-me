class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
include SessionsHelper

private

def logged_in_user
	unless logged_in?
	store_requested_url
	flash[:danger] = "Please login to access this page"
	redirect_to login_url
end
end

end