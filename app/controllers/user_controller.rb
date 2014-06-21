class UserController < ApplicationController
  def index
    @users = User.all

    render 'users/index', layout: 'application'
  end
  def home
    render 'users/home', layout: 'application'
  end

  def show
    @user = current_user

    render 'users/show', layout: 'application'
  end
end
