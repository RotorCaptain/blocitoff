def registration_confirmation(user) 
   @message = 'Blocitoff Registration Confirmed'
   mail(:from => "myemailid@gmail.com", :to => user.email, :subject => "Thank you for registration")
end