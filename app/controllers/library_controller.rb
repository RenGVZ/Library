class LibraryController < ApplicationController
  def index
    @books = Book.all
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
    @book = Book.find(params[:id])
    @book.update(book_params)

    redirect_to library_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to library_index_path
  end

  def book_params 
    params.require(:book).permit(:title, :author, :pages, :rating)
  end
end
