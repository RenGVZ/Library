class ReviewsController < ApplicationController

  def new
    @book = Book.find(params[:library_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:library_id])
    @review.book = @book
    @review.save
    if @review.save
      redirect_to library_path(@book)
    else 
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to library_path(@review.book)
  end

  private
  
  def review_params
    params.require(:review).permit(:content)
  end

end
