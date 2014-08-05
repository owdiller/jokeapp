class JokesController < ApplicationController

  def index
    @jokes = Joke.all
  end

  def show
    @joke = Joke.find_by(id: params[:id])
  end

  def new
  end

  def create
    @joke = Joke.new
    @joke.joke = params[:joke]
    @joke.user_id = params[:user_id]
    @joke.joke_id = params[:joke_id]
    @joke.rating = params[:rating]

    if @joke.save
      redirect_to "/jokes/#{ @joke.id }"
    else
      render 'new'
    end
  end

  def edit
    @joke = Joke.find_by(id: params[:id])
  end

  def update
    @joke = Joke.find_by(id: params[:id])
    @joke.joke = params[:joke]
    @joke.user_id = params[:user_id]
    @joke.joke_id = params[:joke_id]
    @joke.rating = params[:rating]

    if @joke.save
      redirect_to "/jokes/#{ @joke.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @joke = Joke.find_by(id: params[:id])
    @joke.destroy


    redirect_to "/jokes"
  end

end
