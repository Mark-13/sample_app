class UsersController < ApplicationController

  layout "static"

  def new
    render "users/_new.html.erb"
  end
end
