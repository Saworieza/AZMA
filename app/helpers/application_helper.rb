module ApplicationHelper
	def title(page_title)
		content_for :title, page_title.to_s
	end
	def admin_is_logged_in?
		session[:user] != nil && session[:user].is_a?(Admin)
	end
	def user_is_logged_in?
		session[:user] != nil && session[:user].is_a?(User)
	end
	def someone_is_logged_in?
		user_is_logged_in? || admin_is_logged_in?
	end
end
