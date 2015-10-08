Project Name: LibSys – Library Web Application

Members:                 UnityID
Kunal Bhandari:       kbhanda2
Joshua Clark:            jeclark2
Pratik Mukherjee:   pmukher

Link of the application: 

https://github.com/jcinma/ECE517Prog1.git
http://ec2-52-89-162-147.us-west-2.compute.amazonaws.com:3000/

The functionalities of the application are detailed as follows:-

Sign Up As a User: 

1.	Click on the Log In as User link.
2.	For signing up as a new user, click on the Sign up link at the bottom of the page
3.	Enter the First Name, Last Name, Email, Password and Password Confirmation in the text boxes provided
4.	Click on the Sign Up link.
5.	The user will be signed up and logged in 

Log In as a User and Log Out

1.	If you are already signed up as a user, click on the Log in as a user link
2.	Enter the Email and Password in the text boxes provided
3.	Click on the Log In link 
4.	The signed up user will be logged in. To Logout, click on the logout link at the top
	
Log In As an Admin and Log Out:
	
1.	If you are an admin, click on the Log in as an admin link.
2.	Enter the Email and Password in the text boxes provided
3.	Click on the Log In Button 
4.	The admin will be logged in. To Log Out click on the Logout button 

The credentials of the super Admin are as follows:-
Email: admin@library.com
Password: qwerty123

Editing the profile details by an Admin

1.	Log in as an Admin.
2.	Click on the Admins Link
3.	The list of the admins will be visible. Click on the Show link
4.	The details of the admin will be visible. Click on the Edit link at the bottom
5.	Edit the changes in the text boxes provided. Click on the Update Admin link
6.	The changes of the admin will be updated 

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

Adding New Admins by an Admin

1.	Login as an admin
2.	Click on the Admins link 
3.	Click on the New Admin button at the bottom
4.	Enter the details of the admin 
5.	Click on create admin button 

View other admins

1.	Log in as an admin
2.	Click on the Admins link
3.	List of admins will be visible 
4.	Click on Show button 
5.	The list of details of the user will be visible except the password 

Deleting other admins

1.	Login as an admin
2.	Go to the Admins tab
3.	The list of the admins will be visible. Click on the Delete Admin button against the record that you want to delete.
4.	The admin will be deleted

Adding a book (by an Admin)

1.	Log in as an Admin 
2.	Go to the Books tab
3.	Click on the New Book button at the bottom
4.	Enter the details and then click on the create book button 

View the list of all Books. (by an Admin)

1.	Log in as an admin
2.	Go to the Books tab at the top
3.	List of books will be visible 

View the details of a book (by an Admin)

1.	Log In as an Admin
2.	Go to the Books tab’
3.	Against the record of a particular book click on the Show button. The details of the book will be visible 

View the details of a book (by a User)

1.	Log In as a User
2.	Go to the Books tab’
3.	Against the record of a particular book click on the Show button. The details of the book will be visible 


Editing the details of a book (by an Admin)

1.	Log In as an Admin
2.	Go to the Books tab’
3.	Against the record of the book that you want to edit, click on the Edit button 
4.	Edit the changes and then click on the Update Book button at the bottom. 

To view the checkout history of an user 

1.	Log in as a user
2.	Click on the User checkout history tab at the top
3.	The list of all checked out books will be visible

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

Note 

a. When a book is deleted the checkout history of that book will also be deleted from the checkout history of the users who borrowed the book 

b. An admin will not be able to delete a book that is currently checked out by an user 

Deleting an User who is not holding a checked out book (For an Admin)

1.	Log In as an Admin. 
2.	Click on the Users link at the top of the page
3.	The list of registered users are displayed
4.	To delete an user click on the Delete User button 
5.	The user will be deleted. 

Note 

a. When a user is deleted the checkout history of that user will also be deleted from the checkout history of the books that was borrowed by the user 

b. An admin will not be able to delete a user who has checked out books 

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

Return a book

1.	Login as a User or an Admin
2.	The user will be able to view the list of the checked out books on the Home Page. Alternatively click on the Home Page  
3.	Click on the Return button.
4.	The book will be returned 

To checkout a book for on behalf of a user

1.	Log in as an admin
2.	Against the list of available books enter the email id of the user whose book you want to check out.
3.	Click on the create checkout button. The book will be checked out 
4.	This functionality will throw an error if the admin enters a wrong email id.

Suggest a book from a User

1.	Log in as a user.
2.	Click on Suggest a book at the top of the page
3.	Enter the details of the book
4.	Click on Create a book
5.	The book will be available to the list of suggested books 

To add a Suggested book
1.	Log in as an admin
2.	Click on the Suggested Books link on the top of the page
3.	The list of the Suggested Books will be visible. 
4.	Click on the Edit button against the book that you want to ass.
5.	In the Suggested text box change the text to false 
6.	Click on the Update Book button 

Editing the profile of an User

1.	Login as a user.
2.	Click on Suggest a Book button on the top of the page
3.	Update the First Name, Last Name and Email in the text boxes provided
4.	Click on Update user. The user will be updated 

Tests Implemented
1.	The model Book has been tested. The feature that a book cannot be added with a NULL ISBN, Title, Description, Status or duplicate ISBN has been implemented.
2.	The controller for Users has been tested.



..






