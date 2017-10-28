class PhotosController < ApplicationController
	def index
  end
  def new
  end

  def edit
  end

  def show
  end

  private
    def photo_params
      params.require(:photo).permit(:name,:description,:contacts,:category_id,:user_id)
    end

end
