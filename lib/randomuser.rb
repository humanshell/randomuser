require 'net/http'
require 'uri'
require 'json'
require 'randomuser/version'

module Randomuser

  def self.generate(number=1)
    request("results=#{number}")
  end

  def self.generate_female(number=1)
    request("results=#{number}&gender=female")
  end

  def self.generate_male(number=1)
    request("results=#{number}&gender=male")
  end

  def self.generate_seed(seed='')
    request("seed=#{seed}")
  end

  class ApiError < Exception
  end

  private

    def self.api_url(query='')
      "http://api.randomuser.me/#{Randomuser::VERSION}/?#{query}"
    end

    def self.request(query='')
      uri  = URI.parse(self.api_url(query))
      http = Net::HTTP.new(uri.host, uri.port)

      http.start do |connection|
        api_response = connection.send_request(:get, uri.request_uri)
        response = JSON.parse(api_response.body, symbolize_names: true)
        return response[:results] if response[:results]
        raise Randomuser::ApiError, api_response.body
      end
    end

end
