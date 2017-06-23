class SessionsController < ApplicationController
  # respond_to :json

  def new
    byebug
    respond_to do |format|
      format.html
      format.json {render json: {message: "Welcome to Sample App"}}
    end
  end

  def create
  	 # Log the user in and redirect to the user's show page.
     user = User.find_by(email: params[:session][:email].downcase)
     if user && user.authenticate(params[:session][:password])
        if user.activated?
          log_in user
          params[:session][:remember_me] == '1' ? remember(user) : forget(user)
          respond_to do |format|
            format.html {redirect_back_or user}
            format.json {render json: user}
          end
        else
          message  = "Account not activated. "
          message += "Check your email for the activation link."
          flash[:warning] = message
          respond_to do |format|
            format.html {redirect_to root_url}
            format.json {render json: {error: "Check your email for the activation link."}}
          end
        end
     else
       # Create an error message.
       flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
       respond_to do |format|
         format.html {render 'new'}
         format.json {render json: {error: "Invalid email/password combination"}}
       end

    end
  end
  def destroy
  	log_out if logged_in?
    redirect_to root_url
   end
end
