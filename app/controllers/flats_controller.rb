require 'open-uri'
class FlatsController < ApplicationController

  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  before_action :parse_json # before you run the actions call the parse_json method first

  def index # USER ACTION: LIST ALL FLATS
  end

  def show # USER ACTION: LIST 1 FLAT
    id = params['id'].to_i
    @flat = @flats.find { |flat| flat['id'] == id }
  end

  private

  def parse_json
    @flats = JSON.parse(open(URL).read)
  end


end
