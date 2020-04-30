class LibraryController < ApplicationController
  def index
    @books = Book.all
  end

  def add
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
   @book = Book.new
  end

  def create

  end

  def edit
    @book = Book.find(params[:id])
  end

  def update

  end

  def destroy

  end
end
