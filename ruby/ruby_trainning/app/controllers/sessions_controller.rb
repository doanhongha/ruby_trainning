class SessionsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in(user)
  		redirect_to "/"
  	else 
  		flash.now[:'alert-danger'] = 'User/password error!'
  		render 'new'
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end
end
