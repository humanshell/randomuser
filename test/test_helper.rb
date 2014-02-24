# coding: utf-8
# use minitest gem, not the one from stdlib
gem     'minitest'

require 'minitest/autorun'
require 'randomuser'

# override the generate methods so they return mock responses during testing
module Randomuser
  def self.generate(number=1)
    Array.new(number, mock_response)
  end

  def self.generate_female(number=1)
    Array.new(number, mock_response)
  end

  def self.generate_male(number=1)
    Array.new(number, mock_response('male'))
  end

  def self.generate_seed(seed='')
    Array.new(1, mock_response)
  end
end

def mock_response(gender='female')
  {
    user: {
      gender: "#{gender == 'female' ? 'female' : 'male'}",
      name: {
        title: "#{gender == 'female' ? 'mrs' : 'mr'}",
        first: "first",
        last: "last"
      },
      location: {
        street: "6127 pine dr",
        city: "raleigh",
        state: "colorado",
        zip: "34545"
      },
      email: "first.last@example.com",
      username: "blueleopard186",
      password: "password",
      salt: "L",
      md5: "003b0f6e9b1b40200ba0370a5f29208e",
      sha1: "87b7b6b2a06238c0bb7174f03f74ae86211afc7d",
      sha256: "49995e8aadf97fa0cca079be5bbf47b5fa0c5ffb0dd81831ee9b382c9772b46b",
      registered: "1134630377",
      dob: "326899532",
      phone: "(164)-244-7352",
      cell: "(485)-899-1991",
      SSN: "525-20-3862",
      picture: "http://api.randomuser.me/0.3.1/portraits/#{gender == 'female' ? 'women' : 'men'}/0.jpg"
    },
    seed: "beautifulLeopard",
    version: "0.3.1"
  }
end
