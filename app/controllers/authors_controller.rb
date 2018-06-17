class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new
    @author.name = params[:author][:name]
    @author.bio = params[:author][:bio]
    @author.save
    redirect_to "/authors"
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    
  end

  def delete
  end
end
