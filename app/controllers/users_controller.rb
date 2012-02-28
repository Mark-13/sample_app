class UsersController < ApplicationController

  layout "static"

  def show
    @user = User.find(params[:id])

    render "users/_show.html.erb"

  end

  def new
    @user = User.new
        
    render "users/_new.html.erb"
  end


 def create
    @user = User.new(params[:user])
    if @user.save
       sign_in @user
       flash[:success] = "Welcome to the Sample App!"
       redirect_to @user
    else
      render "users/_new.html.erb"
    end
  end

  def edit
    @user = User.find(params[:id])
  end


end
