class HomeController < ApplicationController
	def index
		@users = User.order('created_at DESC').limit(1)
		@tags = Tag.all
		@posts = Post.order('created_at DESC').limit(10)
	end
end
