class PlacesController < ApplicationController

  def index
    @places = Place.all
    @posts = Place.all.paginate(:page => params[:page], :per_page => 10)
    @places_last = Place.last
  end
end