class BooksController < ApplicationController
#require PaperTrail
  before_filter :ensure_user!, only: [:index, :show]
  before_filter :authenticate_admin!, only: [:edit, :update, :destroy]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    #@books = Book.all
    #if params[:search]
    #  @books = Book.search(params[:search]).order("created_at DESC")
    #else
    #  @books = Book.order("created_at DESC")
    #end
	if params[:search]
	   @search="%#{params[:search]}%"
      #@books = Book.search(params[:search]).order("created_at DESC")
	  @books = Book.where("ISBN LIKE ? or title LIKE ? or description LIKE ? or author LIKE ?", @search, @search, @search, @search).where.not(suggested: 't')
	  
    else
      @books = Book.order("created_at DESC").where.not(suggested: 't')
    end 
  end
  def suggested_books
    @books = Book.where(suggested: 't')
  end
  def history
  @versions = PaperTrail::Version.order('created_at DESC')
end
  def book_search
   @books = Book.order("created_at DESC")
  end
  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create

	@book = Book.new(book_params)

  if (user_signed_in?)
    @book.suggested = true
  else 
    @book.suggested = false
  end

  @book.status = "Available"


    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
  respond_to do |format|
    if(@book.status=="Available")
    @checkouts = Checkout.where(book_id: @book.id)
    @checkouts.each do |checkout|
      checkout.destroy
    end
		@book.destroy

		
		format.html { redirect_to books_url, notice: 'Book was successfully deleted.' }
		format.json { head :no_content }
	else

		format.html { redirect_to books_url, notice: 'Book cannot be deleted since it is checked out.' }
		format.json { head :no_content }	
    end
  end
end
  private
    def ensure_user!
  unless (admin_signed_in? || user_signed_in?)
	redirect_to root_path
  end
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:id,:ISBN, :title, :description, :author, :status, :email, :search, :suggested)
    end
end
