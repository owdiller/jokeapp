class JokesController < ApplicationController
  before_filter :login_required, :except => [:index, :show]
  
  def index
    @jokes = Joke.all
  end

  def show
    @joke = Joke.find_by(id: params[:id])
  end

  def new
    @users = User.all
  end

  def create
    @joke = Joke.new
    @joke.joke = params[:joke]
    @joke.user_id = params[:user_id]
    @joke.joke_id = params[:joke_id]
    @joke.rating = params[:rating]

    if @joke.save
      redirect_to "/jokes/#{ @joke.id }", :notice => "Joke was created!"
    else
      render 'new'
    end
  end

  def edit
    if @user.username != session['username']
      redirect_to "/jokes", :notice => "Can't edit #{@user.name}"
    end
  end

  def update
    @joke = Joke.find_by(id: params[:id])
    @joke.joke = params[:joke]
    @joke.user_id = params[:user_id]
    @joke.joke_id = params[:joke_id]
    @joke.rating = params[:rating]

    if @joke.save
      redirect_to "/jokes/#{ @joke.id }", :notice => "Joke was updated!"
    else
      redirect to '/jokes/index'
    end
  end

  def destroy
    @joke = Joke.find_by(id: params[:id])
    @joke.destroy


    redirect_to "/jokes"
  end
end
