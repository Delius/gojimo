class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
require 'httparty'
  require 'json'

  def listings

    @response = HTTParty.get("https://api.gojimo.net/api/v4/qualifications")
    @data = @response['response']['listings']
    respond_to do |format|
      format.js
    end
  end
end
