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
    @book = Book.new(book_params)
    @book.save

    redirect_to library_path(@book)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update

  end

  def destroy

  end

  def book_params 
    params.require(:book).permit(:title, :author, :pages, :rating)
  end
end
