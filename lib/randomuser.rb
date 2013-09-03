# Randomuser Ruby Library
require 'net/http'
require 'uri'
require 'json'
require 'randomuser/version'

module Randomuser
  @@api_base = 'http://randomuser.me/g/'

  def self.api_url(query='')
    "#{@@api_base}?#{query}"
  end

  def self.generate(query='')

    # create the http connection object
    uri  = URI.parse(self.api_url(query))
    http = Net::HTTP.new(uri.host, uri.port)

    # open our HTTP connection and send the appropriate request type
    # the block will automatically close our connection so we don't have to
    http.start do |connection|
      response = connection.send_request(:get, uri.request_uri)
      response = JSON.parse(response.body, symbolize_names: true)
      response[:results]
    end
    
  end
end
