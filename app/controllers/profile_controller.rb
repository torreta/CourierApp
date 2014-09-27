class ProfileController < ApplicationController
  def edit
    #@user = User.find(params[:id])
   # @user = User.find(profile_params)
  #rescue
  #  @user = User.find(id=2)
  end
  
  
  def profile_params
    params.require(:user).permit(:id)
  end
end
