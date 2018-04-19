class ReviewsController < ApplicationController
  def new
    @book = Book.find_by_slug(params[:book_id])
    @review = Review.new
    render :new
  end

  def create
    @book = Book.find_by_slug(params[:book_id])
    @review = @book.reviews.new(review_params)
    if @review.save
      redirect_to  book_path(@book)
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by_slug(params[:book_id])
    @review = Review.find(params[:id])
    render :edit
  end

  def update
    @book = Book.find_by_slug(params[:book_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find_by_slug(params[:book_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to book_path(@book)
  end

private
  def review_params
    params.require(:review).permit(:username, :text, :rating)
  end

end
