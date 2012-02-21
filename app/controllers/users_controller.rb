class UsersController < ApplicationController

  layout "static"

  def new
    render "users/_new.html.erb"
  end

  def show
    @user = User.find(params[:id])

    render "users/_show.html.erb"

  end

end
