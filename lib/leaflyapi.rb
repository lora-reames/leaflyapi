#require "leaflyapi/version"
require "httparty"
require "json"
require 'pry'

module Leaflyapi
  class Strains
    def self.all
      response = ::HTTParty.get("http://www.leafly.com/api/strains")
      strains_json = ::JSON.parse(response.body)
      strains_json.collect {|strain| new (strain)}
    end

    def self.keys
      response = ::HTTParty.get("http://www.leafly.com/api/strains")
      strains_json = ::JSON.parse(response.body)
      strains_json.map do |strain|
        strain["Key"]
      end
    end

    def self.find_by_key(key)
      response = ::HTTParty.get("http://www.leafly.com/api/details/#{key}")
      strain_json = ::JSON.parse(response.body)
      new (strain_json)
    end

    def self.find_by_category(category)
      response = ::HTTParty.get("http://www.leafly.com/api/strains?category=#{category}")
      strains_json = ::JSON.parse(response.body)
      strains_json.map do |strain|
        strain["Key"]
      end
    end

    attr_reader :key, :effects, :id, :name, :category,
    :description, :symbol, :overview, :url,
    :rating, :medical_uses, :side_effects, :reviews

    def initialize(data)
      @id = data["Id"]
      @key = data["Key"]
      @name = data["Name"]
      @category = data["Category"]
      @symbol = data["Symmbol"]
      @description = data["Abstract"]
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
  end
end
