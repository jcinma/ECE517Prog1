class CheckoutsController < ApplicationController
  before_action :set_checkout, only: [:show, :edit, :update, :destroy]
@Admin
  # GET /checkouts
  # GET /checkouts.json
  def index
    @checkouts = Checkout.all
  end

  # GET /checkouts/1
  # GET /checkouts/1.json
  def show
  end

  # GET /checkouts/new
  def new
    @checkout = Checkout.new
  end

  # GET /checkouts/1/edit
  def edit
  end

  # POST /checkouts
  # POST /checkouts.json
  def create
	#@checkout = Checkout.new
	#@checkout.book_id = @book.id
	#@checkout.user_id = @user_id
   @checkout = Checkout.new(checkout_params)
	book = Book.find(@checkout.book_id)
	#book = Book.new  
 	if(@checkout.status == 'Checkout')
		@checkout.user_id = current_user.id

		
		book.update(status: 'Checkout', user_id: @checkout.user_id)
	elsif(@checkout.status == 'Return')
		@checkout.user_id= book.user_id
		book.update(status: 'Available', user_id: "")
	elsif User.where(email: @checkout.status).blank?
	@checkout.user_id = nil
	else
		user = User.find_by(email: @checkout.status)
		@checkout.user_id = user.id
		@checkout.status = 'Checkout'
		book.update(status: 'Checkout', user_id: @checkout.user_id)
	end
    respond_to do |format|
      if @checkout.user_id == nil
	  format.html { redirect_to href='/user_checkout', notice: 'Enter correct Email' }
      format.json { render :show, status: :created, location: @checkout }
	  elsif @checkout.save
        format.html { redirect_to @checkout, notice: 'Checkout was successfully created.' }
        format.json { render :show, status: :created, location: @checkout }
      else
        format.html { render :new }
        format.json { render json: @checkout.errors, status: :unprocessable_entity }
      end
    end
 end

  # PATCH/PUT /checkouts/1
  # PATCH/PUT /checkouts/1.json
  def update
    respond_to do |format|
      if @checkout.update(checkout_params)
        format.html { redirect_to @checkout, notice: 'Checkout was successfully updated.' }
        format.json { render :show, status: :ok, location: @checkout }
      else
        format.html { render :edit }
        format.json { render json: @checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkouts/1
  # DELETE /checkouts/1.json
  def destroy
    @checkout.destroy
    respond_to do |format|
	  format.html { redirect_to checkouts_url, notice: 'Checkout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
	def user_history
	end
	def user_checkout
	end
	
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkout
      @checkout = Checkout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checkout_params
      params.require(:checkout).permit(:book_id, :status, :user_id, :email)
    end
end
