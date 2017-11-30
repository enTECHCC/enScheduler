#require 'pry'
class UsersController < ApplicationController
  http_basic_authenticate_with name: "ddh", password: "secret", except: [:new,:create]

  def new
  end

  def login
  end 

  def failure
  end

  def success
  end
  
  def req
    log = User.find_by email: params[:user][:email]
    if(params[:user][:password]==log[:password])
      redirect_to log
    else
      redirect_to '/users/login/failure'
    end
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to '/users/new/success'
  end
    
  def show
    @user = User.find(params[:id])
  end


    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
