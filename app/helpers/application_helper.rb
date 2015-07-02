module ApplicationHelper

	def user_is_logged_on
		return session["user_id"].present?
	end
	
end