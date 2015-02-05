class QualificationsController < ApplicationController

  def index
    @qualifications = Qualification.all
    @ret=    HTTParty.get('https://api.gojimo.net/api/v4/qualifications').response.body
    @quals = JSON.parse @ret

    @qualifications = @quals.map do |line|

      q = Qualification.new
      q.qualification_name = line['name']
      q.subjects = line['subjects']
      title =  line['subjects'].map do |i|
        i["title"]
      end
      q.title = title
      color = line['subjects'].map do |s|
        s['colour']
      end
      q.color = color
      # set name value however you want to do that
      q.save
      q
    end
    @qualifications.select(&:persisted?)
  end


# require 'awesome_print'
# require 'httparty'
# class QualificationsController < ApplicationController
#
#   def index
#
#     @ret=    HTTParty.get('https://api.gojimo.net/api/v4/qualifications').response.body
#     @quals = JSON.parse @ret
#
#     @qualifications = @quals.map do |line|
#       validates :external_data
#       u = Qualification.new
#       u.external_data = line['user']['id']
#       # set name value however you want to do that
#       u.save
#       u
#     end
#     @qualifications.select(&:persisted?)
#   end
end
