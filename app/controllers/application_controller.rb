class ApplicationController < ActionController::Base
	def authorise_admin

if  !view_context.admin_is_logged_in?
      redirect_to new_session_path
    end
      



		end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
