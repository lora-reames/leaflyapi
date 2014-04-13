#require "leaflyapi/version"
require "httparty"
require "json"
require 'pry'

module Leaflyapi
  class Strains
    def self.all
      response = ::HTTParty.get("http://www.leafly.com/api/strains")
      strains_json = ::JSON.parse(response.body)
      #strains_json.collect {|strain| new (strain)}
    end

    def self.keys
      response = ::HTTParty.get("http://www.leafly.com/api/strains")
      strains_json = ::JSON.parse(response.body)
      strains_json.map do |strain|
        strain["Key"]
      end
    end

    def initialize(data)
      @id = data["Id"]
      @key = data["Key"]
      @name = data["Name"]
      @category = data["Category"]
      @symbol = data["Symmbol"]
      @abstract = data["Abstract"]
      @url = data["Url"]
      @rating = data["Rating"]
      @effects = data["Effects"]
      @medical_uses = data["Medical"]
      @side_effects = data["Negative"]
      @reviews = data["Reviews"]
    end
  end

  if $0 == __FILE__
  binding.pry
  test = Strains.keys
  end
end
