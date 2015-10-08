require 'test_helper'

class UsersControllerTest < ActionController::TestCase
include Devise::TestHelpers
fixtures :users
  setup do
    @user = users(:user1)
	@user.save!
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil create(:@user)
  end

  test "should display user" do
    get :show, id: @user
    assert_response :success
  end

  test "should destroy user" do
    assert_difference('User.count', 0) do
    delete :destroy, id: @user    
	end
	assert_redirected_to users_path
  end
  
  #test "should create user" do
  #assert_difference('User.count') do
  #post :create, :user => {:email => "pratik@ncsu.edu", :encrypted_password => "qwerty123", :first_name => "Pratik", :last_name => "Mukherjee", :numBooks => 0}
  #end
  #assert_redirected_to users_path(assigns(:user))
  #end

  test "should get new" do
  get :new
  assert_response :success
  end
  
end
