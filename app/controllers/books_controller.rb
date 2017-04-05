class BooksController < ApplicationController




  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end


  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:success] = "Profile updated"
          redirect_to @book
    else
      render 'edit'
    end
  end



  def create
    @book = Book.new(book_params)
    if @book.save
        redirect_to @book

    	else
      	render "new"
      end
   end




  def show
    @book = Book.find(params[:id])
  end



private


    def book_params
      params.require(:book).permit(:title, :contents, :image, :bookimage)
    end










end
