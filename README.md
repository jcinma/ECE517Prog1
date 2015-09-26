# ECE517Prog1
Library Application on Rails
Josh, Pratik, and Kunal
ECE 517, Fall2015
Update 1
Project Name: LibSys – Library Web Application

Members:                 UnityID
Kunal Bhandari:       kbhanda2
Joshua Clark:            jeclark2
Pratik Mukherjee:   pmukher

Link of the application: 

https://github.com/airblade/paper_trail

http://www.sitepoint.com/full-text-search-rails-elasticsearch/

The functionalities of the application are detailed as follows:-

Sign Up As a User: 

1.	Click on the Log In as User button.
2.	For signing up as a new user, click on the Sign up link at the bottom of the page
3.	Enter the First Name, Last Name, Email, Password and Password Confirmation in the text boxes provided
4.	Click on the Sign Up button.
5.	The user will be signed up and logged in 

Log In as a User and Log Out

1.	If you are already signed up as a user, click on the Log in as a user button
2.	Enter the Email and Password in the text boxes provided
3.	Click on the Log In Button. 
4.	The signed up user will be logged in. To Logout, click on the logout link at the top
	
Log In As an Admin and Log Out:

1.	If you are a signed up admin, click on the Log in as an admin link.
2.	Enter the Email and Password in the text boxes provided
3.	Click on the Log In Button 
4.	The admin will be logged in. To Log Out click on the Logout button 

The credentials of the super Admin are as follows:-
Email: admin@test.com
Password: qwerty123

Search for a Book as an User

1.	Log In as a user
2.	Click on the Search Books link 
3.	In the Search Books text box above enter the ISBN or Title or Description or Author of the book intended to be searched
4.	Press Enter. 
5.	The list of available books that meet the search criteria gets displayed

View the list of books 

1.	Log In as a User.
2.	Click on the Books link on the top of the page.
3.	The list of all the books in the library will be displayed.
4.	To view the details of the book, click on the Show link for a particular book. 

To checkout a book as an User

1.	Search for the book that needs to be checked out.
2.	In the list of the books that are displayed, click on the  Create Checkout button for the available book
3.	The book will be checked out.

Deleting an Unchecked Book (For an Admin)

1.	Log In as an Admin
2.	Go to the Books link at the top of the page
3.	The list of available books will be displayed. 
4.	Click on the Destroy button of a book for which the Create Checkout is enabled 
5.	The book will be destroyed. 

Deleting an User who is not holding a checked out book (For an Admin)

1.	Log In as an Admin. 
2.	Click on the Users link at the top of the page
3.	The list of registered users are displayaed
4.	To delete an user click on the Delete User button 
5.	The user will be deleted. 

To view the checkout history of an user

1.	Log in as an Admin.
2.	Click on the Users link at the top of the page
3.	The list of the users will be displayed. Click on the Show button for the user whose checkout history is intended to be displayed.
4.	The list of the books checked out by the user will be displayed

To view the checkout history of a book

1.	Log in as an Admin.
2.	Click on the Books link at the top of the page
3.	The list of the books will be displayed. Click on the Show button for the user whose checkout history is intended to be displayed. 
4.	The users who have checked out the book will be displayed. 

Tests Implemented
1.	The model Book has been tested. The feature that a book cannot be added with a NULL ISBN, Title, Description, Status or duplicate ISBN has been implemented.
2.	The controller for Users has been tested.



..






