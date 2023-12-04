# README
Welcome to Easeply, this document will tell you how to start and run this application

1. You must have ruby installed on your system;
  https://www.ruby-lang.org/en/documentation/installation/
2. You must install Ruby on Rails
  https://guides.rubyonrails.org/v5.1/getting_started.html
  If you have ruby installed, you can use in terminal
  |gem install ruby|

3. You must have atleast MySQL 3 (I HAVE MYSQL 8) or above server installed on your machine
  https://dev.mysql.com/downloads/installer/

4. open the capstone directory and type 'bundle install' in a terminal, this will install all the gems from the gemfile.
   depending on various factors, this may take a while. 

5. Open the capstone directory after rails is installed and type
   rails db:migrate
   This will create the database in mySQL (you can check the schema.rb in the config/db/ directory to ensure it built correctly)

6. You can now start the server by typing
    rails s
   in the capstone directory terminal, this will start and run the server on localhost:3000
   
7. You should be able to interact with the website completely now.


Please note: 
The server will not tbe SSL encrypted (no green lock) because that is based on system and I had it set up on my own system to be secure
You will have to create a certificate/key yourself,
If it isn't working for some reason, email me and I will try to help
I developed this on a Mac so I don't know the process/how exactly to install everything on a Windows machine. 
