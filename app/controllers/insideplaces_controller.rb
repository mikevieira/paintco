class InsideplacesController < ApplicationController

  def index
    @places = Place.all.paginate(:page => params[:page], :per_page => 5).order("created_at DESC")
  end


end
