class UserMailer < ActionMailer::Base
  default from: "rimli.sathi@gmail.com"
     def welcome_email(user)
    	@user = user
    	@url  = "http://rimli.sathi@gmail.com/login"
    	mail(:to => user.email, :subject => "Welcome to My Awesome Site")
     end
  
end
