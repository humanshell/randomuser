# coding: utf-8
require 'test_helper'

# all tests for randomuser api gem

class TestRandomuser < Minitest::Test

  def test_generate_returns_single_response
    response = Randomuser.generate
    assert_equal(response.class, Array)
    assert_equal(response.length, 1)
  end

  def test_generate_returns_multiple_responses
    response = Randomuser.generate(5)
    assert_equal(response.class, Array)
    assert_equal(response.length, 5)
  end

  def test_generate_female_returns_single_response
    response = Randomuser.generate_female
    assert_equal(response.class, Array)
    assert_equal(response.length, 1)
    assert_equal(response.first[:user][:gender], 'female')
    assert_equal(response.first[:user][:name][:title], 'mrs')
    assert_equal(response.first[:user][:picture], 'http://api.randomuser.me/0.3.1/portraits/women/0.jpg')
  end

  def test_generate_female_returns_multiple_responses
    response = Randomuser.generate_female(5)
    assert_equal(response.class, Array)
    assert_equal(response.length, 5)
    assert_equal(response.first[:user][:gender], 'female')
    assert_equal(response.first[:user][:name][:title], 'mrs')
    assert_equal(response.first[:user][:picture], 'http://api.randomuser.me/0.3.1/portraits/women/0.jpg')
  end

  def test_generate_male_returns_single_response
    response = Randomuser.generate_male
    assert_equal(response.class, Array)
    assert_equal(response.length, 1)
    assert_equal(response.first[:user][:gender], 'male')
    assert_equal(response.first[:user][:name][:title], 'mr')
    assert_equal(response.first[:user][:picture], 'http://api.randomuser.me/0.3.1/portraits/men/0.jpg')
  end

  def test_generate_male_returns_multiple_responses
    response = Randomuser.generate_male(5)
    assert_equal(response.class, Array)
    assert_equal(response.length, 5)
    assert_equal(response.first[:user][:gender], 'male')
    assert_equal(response.first[:user][:name][:title], 'mr')
    assert_equal(response.first[:user][:picture], 'http://api.randomuser.me/0.3.1/portraits/men/0.jpg')
  end

  def test_generate_seed_returns_single_response
    response = Randomuser.generate_seed
    assert_equal(response.class, Array)
    assert_equal(response.length, 1)
  end

end
