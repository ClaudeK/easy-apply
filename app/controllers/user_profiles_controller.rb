class UserProfilesController < ApplicationController

  def new
  	@user_profile = UserProfile.new
  end

  def create
  	@user = current_user
    @user_profile = @user.build_user_profile(params[:user_profile])
     
    if @user_profile.save
      redirect_to @user_profile
    else
      render 'new'
    end
  end

  def show
  	@user = current_user
  	@user_profile = @user.user_profile
  end
end
