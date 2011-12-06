class UsersController < ApplicationController
  def new # responds to get /users/new by rendering new.html.erb
    @title = "Registry"
    @user = User.new
  end
  
  def show # responds to get /user/i by rendering show.html.erb
    @user = User.find(params[:id])
    @title = @user.name
  end
end