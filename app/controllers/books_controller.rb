class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def alpha_index
    @books = Book.alphabetize
    render :index
  end

  def show
    @book = Book.find_by_slug(params[:id])
    render :show
  end

  def new
    @book = Book.new
    render :new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to  books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by_slug(params[:id])
    render :edit
  end

  def update
    @book = Book.find_by_slug(params[:id])
    if @book.update(book_params)
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find_by_slug(params[:id])
    @book.destroy
    redirect_to books_path
  end

private
  def book_params
    params.require(:book).permit(:title, :published, :author)
  end

end
