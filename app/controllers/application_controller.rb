class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include SessionsHelper
  # render html: "hello, world!"
  def hello
  render "static_pages/home"
   end

private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end
