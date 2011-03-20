class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to "/user/#{@user.id}/reps"
  end

  def new
    @user = User.new 
  end

  def reps
    @user = User.find(params[:id])
    @congresspeople = @user.get_congressperson
    @senior = @congresspeople[:senior_senator]
	  @junior = @congresspeople[:junior_senator]
	  @representative = @congresspeople[:representative]
  end

  def show
  end

end
