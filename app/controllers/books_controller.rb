class BooksController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]
  def show
     @other_book = Book.find(params[:id])
    @user = @other_book.user
    @book = Book.new
  end

  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "You have update book success"
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      flash[:notice] = "You have update book success"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      @user =current_user
      render :index
    end
  end
end
