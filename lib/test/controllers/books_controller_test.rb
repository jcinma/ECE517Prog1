require_relative '../test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:book_with_all_credentials)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
    post :create, book: { ISBN: @book.ISBN, title: @book.title, description: @book.description, author: @book.author, status: @book.status, user: @book.user}
	#assert_response :success
    end

    assert_redirected_to book_path(assigns(:book))
  end

  #test "should show book" do
    #get :show, id: @book
    #assert_response :success
  #end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { ISBN: @book.ISBN, author: @book.author, description: @book.description, status: @book.status, title: @book.title, user: @book.user }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', 0) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
