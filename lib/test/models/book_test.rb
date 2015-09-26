require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should save the book with all valid paramaters" do
  book=books(:book_with_all_credentials)
  assert book.save, "Could not save the book with valid credentials"
  end
  test "should save the book with null user" do
  book=books(:book_with_null_user)
  assert book.save, "Could not save the book with a null user"
  end
  test "should not save the book with null title" do
  book=books(:book_with_null_title)
  assert_not book.save, "Saved the book with a null user"
  end
  test "should not save the book with null description" do
  book=books(:book_with_null_description)
  assert_not book.save, "Saved the book with a null description"
  end
  test "should not save the book with null author" do
  book=books(:book_with_null_author)
  assert_not book.save, "Saved the book with a null author"
  end
  test "should not save the book with null status" do
  book=books(:book_with_null_status)
  assert_not book.save, "Saved the book with a null status"
  end
  test "should have unique ISBN" do
  #book1=Book.create(:ISBN => 'I1237' :title => 'Hary Potter' :description => 'Novel' :author => 'Rowling' :status => 'Available' :user => 'pmukher')
  #assert book1.valid?
  #book2=Book.create(:ISBN => book1.ISBN :title => 'Hary Potter' :description => 'Novel' :author => 'Rowling' :status => 'Available' :user => 'pmukher')
  #assert_not book2.valid, "Saved the book with a duplicate ISBN"
  #book1=Book.create('Hary Potter', 'Rowling', 'Novel', 'I1237')
  #book1=Book.create('I1237')
  #assert book1.valid?
  #book2=Book.create('Hary Potter', 'Rowling', 'Novel', 'I1237')
  #book1=Book.create(:'I1237')
  #assert_not book2.valid, "Saved the book with a duplicate ISBN"
  book=books(:book_with_duplicate_ISBN)
  assert_not book.save, "Saved the duplicate ISBN"
  end  
end
