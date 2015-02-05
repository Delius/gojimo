class IndexController < ApplicationController

  def listings
    include HTTParty
    @response = HTTParty.get("https://api.gojimo.net/api/v4/qualifications")
    @data = @response['response']['body']

  end
end



