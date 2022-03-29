 class SessionsController < ApplicationController
 
 # POST: /sessions
  post "/login" do
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
        session[:user_id] = user.id # saves user id into server memory 
        halt 200, {user: user, message:"User successfully logged in"}.to_json
    else 
        halt 404, {error: "Invalid Credentials!"}
    end
  end

  delete "/logout" do
    session.delete("user_id")
    {message: "User has successfully logged out!"}.to_json
  end
end
