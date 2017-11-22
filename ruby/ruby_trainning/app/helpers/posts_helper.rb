module PostsHelper
	include SessionsHelper

	def is_admin?
		if current_user.role == 1
			return true
		else
			return false
		end
	end

	def admin
		unless is_admin?
			redirect_back(fallback_location: root_path)
		end
	end
end
