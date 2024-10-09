class BooksController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]
  def show
     @book = Book.find(params[:id])
    @user = @book.user
    @book_new = Book.new
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
  end
  
  def destroy
  end
  
  def create
  end
end
