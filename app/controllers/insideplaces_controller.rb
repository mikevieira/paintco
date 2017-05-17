class InsideplacesController < ApplicationController

  def index
    @places = Place.all
  end


end
