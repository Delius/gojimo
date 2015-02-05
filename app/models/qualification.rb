class Qualification < ActiveRecord::Base
serialize :title, Array
serialize :color, Array
serialize :subjects, Array
  #
  # def self.save_data_from_api
  #   @ret=    HTTParty.get('https://api.gojimo.net/api/v4/qualifications').response.body
  #   @quals = JSON.parse @ret
  #
  #   @qualifications = @quals.map do |line|
  #
  #     q = Qualification.new
  #     q.qualification_name = line['name']
  #     # set name value however you want to do that
  #     q.save
  #     q
  #   end
  #   @qualifications.select(&:persisted?)
  # end




end


# require 'httparty'
# class Qualification
#   include HTTParty
#   base_uri 'https://api.gojimo.net'
#   default_params :output => "json"
#   format :json
#
#   def self.object
#     get "/api/v4/qualifications"
#   end
# end