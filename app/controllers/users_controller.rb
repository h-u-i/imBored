class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path, :alert => "Access denied."
    end
  end



  # def testemail
  #   @user = current_user
  #   UserMailer.welcome_email(@user).deliver_now
  # end
  # this is not working - Warren said MailChimp. 

end
