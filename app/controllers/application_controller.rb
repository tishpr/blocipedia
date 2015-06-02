class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  
   def hello
     render text: "<h1>Hello</h1><p>Welcome home! The page you are viewing is actually in  hello method on ApplicationController</p>"
   end
end
