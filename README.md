# README

This README would normally document whatever steps are necessary to get the
application up and running.


* Ruby version 3.1.2

* System dependencies
This is a SQL injection website that has various broken features to better highlight web scurity. The Ruby on rails application uses SQLite3 to store its database.

This repository consists of:

The web site, including user accounts, blog post, sql injection and a filter system.
The XML- and JSON-based API 

* Configuration
No special configuration is needed just the same gem file system

* Deployment instructions
Download the ruby file and open up cmd window or windows powershell. Type in "CD [file_name]" 
Once your in the Command directory of the file, run the rails s to start the ruby server.

* Security Vulnerabilities 
-SQL injection in the filter view. 
def index
  query = params[:post][:query] if params.include?('post')

  if query && !query.empty?
    @posts = Post.where("title = '#{query}' and private = false")
  else
    @posts = Post.where(private: false)
  end
end

-Using default routes 
get 'tutorial/index'

-Logging sensitive information 
when the password is leaked from the database, it isnt encrypted.
