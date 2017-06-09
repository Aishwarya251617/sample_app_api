class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  # render html: "hello, world!"
  def hello
   render "static_pages/home"
  end
end
