class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
 
	before_filter	:authenticate_admin!, only: [:index, :show, :destroy]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end
 #books = Book.where(user_id: @user.id)
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
  respond_to do |format|
if Book.where(user_id: @user.id).blank?  
  @user.destroy
    
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
	  else
	        format.html { redirect_to users_url, notice: 'Cannot delete user with checked out books.' }
      format.json { head :no_content }
    end
end
end
 def update
  respond_to do |format|
 if(user_signed_in? && current_user.id==@user.id)
   
      if @user.update(user_params)
        format.html { redirect_to books_url, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end

 
 else 
format.html { redirect_to users_url, notice: 'Cant edit other user :).' }
      format.json { head :no_content }
    end        
end
end 
 private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name)
    end
end
