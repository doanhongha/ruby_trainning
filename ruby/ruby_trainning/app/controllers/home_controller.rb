class HomeController < ApplicationController
	def index
		@tags = Tag.all
		@posts = Post.order('created_at DESC').all
	end
end
