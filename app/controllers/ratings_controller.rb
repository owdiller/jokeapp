class RatingsController < ApplicationController

  def index
    @ratings = Rating.all
  end

  def show
    @rating = Rating.find_by(id: params[:id])
    @user = User.new
    @user.username = params[:username]
  end

  def new
    @users = User.all
  end

  def create
    @rating = Rating.new
    @rating.username = params[:username]
    @rating.joke_id = params[:joke_id]
    @rating.user_id = params[:user_id]
    @rating.rating = params[:rating]

    if @rating.save
      redirect_to "/ratings/#{ @rating.id }"
    else
      render 'new'
    end
  end

  def edit
    @rating = Rating.find_by(id: params[:id])
  end

  def update
    @rating = Rating.find_by(id: params[:id])
    @rating.username = params[:username]
    @rating.joke_id = params[:joke_id]
    @rating.rating = params[:rating]

    if @rating.save
      redirect_to "/ratings/#{ @rating.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @rating = Rating.find_by(id: params[:id])
    @rating.destroy


    redirect_to "/ratings"
  end
end
