class PlacesController < ApplicationController
   before_action :authenticate_user!, only: [:new, :create, :show, :update, :edit, :destroy]

  def index
    @places = Place.all.paginate(:page => params[:page], :per_page => 5).order("created_at DESC")
  end

  def new
   @place = Place.new
  end

  def create
    @place = current_user.places.create(place_params)
    if @place.valid?
      redirect_to place_path(@place) 
    else
      render :new, status: :unprocessable_entity
    end
  end
   
   def show
    @place = Place.find(params[:id])
    @photo = Photo.new 
   end 


   def edit
    @place = Place.find(params[:id])
   end

   def update
     @place = Place.find(params[:id])

      if @place.user != current_user
       return render text: 'Not Allowed', status: :forbidden
      end

     @place.update_attributes(place_params)
     if @place.valid?
       redirect_to places_path
     else
       render :edit, status: :unprocessable_entity
     end  
   end

   def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
   end
  
  private 

  def place_params 
    params.require(:place).permit(:title, :date, :description, :photo, :remove_image, :outside)
  end


end
