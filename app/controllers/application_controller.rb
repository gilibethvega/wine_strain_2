class ApplicationController < ActionController::Base
	def authorize_editor!
		unless current_user.editor?
			redirect_to root_path, notice: "You must be a editor in to access this section"
		end
	end
end
