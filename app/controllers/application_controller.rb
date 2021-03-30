class ApplicationController < ActionController::Base
	def authorize_editor!
		unless current_user.editor?
			flash[:alert] = "You must be a editor in to access this section"
			redirect_to new_user_session_url
		end
	end
end
