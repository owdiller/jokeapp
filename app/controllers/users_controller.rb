class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.profilepicture = params[:profilepicture]
    @user.description = params[:description]
    @user.password = params['password']
    @user.password_confirmation = params['password_confirmation']

    if @user.save
      redirect_to "/users/#{ @user.id }"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    @user.password = params['password']
    @user.password_confirmation = params['password_confirmation']
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.username = params[:username]
    @user.profilepicture = params[:profilepicture]
    @user.description = params[:description]
    @user.rating = params[:rating]

    if @user.save
      redirect_to "/users/#{ @user.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy


    redirect_to "/users"
  end
end
