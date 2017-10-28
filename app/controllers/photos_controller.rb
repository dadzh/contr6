class PhotosController < ApplicationController
	before_action :photo_owner, only: [:edit, :update, :destroy]
	before_action :authenticate_user!
	def index
		@photos = Photo.all.order('created_at DESC')
  end
  def new
  	@photo =  current_user.photos.new
  end

  def create
  	@photo =  current_user.photos.new(photo_params)
  	if @photo.save
        redirect_to root_path, :flash => { :notice => "Photo successfully added" }
      else
      render 'new'
      end
  end

  def show
  	@photo = Photo.find(params[:id])
    @select_list = { '5':5, '4':4, '3':3, '2':2, '1':1 }
  end

  def destroy
    @photo.destroy
      redirect_to root_path, :flash => { :notice => "Photo successfully deleted" }
  end

  private
    def photo_params
      params.require(:photo).permit(:name, :user_id, :avatar)
    end

    def photo_owner
      @photo = Photo.find(params[:id])
      if(  @photo.user_id != current_user.id)
        flash[:notice] = 'Access denied as you are not owner of this Notice'
        redirect_to root_path
      end
    end

end
