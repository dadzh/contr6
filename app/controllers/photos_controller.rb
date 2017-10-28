class PhotosController < ApplicationController
	def index
		@photos = Photo.all
  end
  def new
  	@photo =  current_user.photos.new(photo_params)
  end

  def create
  	@photo =  current_user.photos.new(photo_params)
  	if @photo.save
        redirect_to root_path, :flash => { :notice => "Notice successfully added" }
      else
      render 'new'
      end
  end

  def show
  	@photo = Photo.find(params[:id])
  end

  private
    def photo_params
      params.require(:photo).permit(:name, :user_id, :avatar)
    end

end
