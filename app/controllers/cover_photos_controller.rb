class CoverPhotosController < ApplicationController
  def index
    @cover_photos = CoverPhoto.all
  end

  def show
    @cover_photo = CoverPhoto.find(params[:id])
  end

  def new
    @cover_photo = CoverPhoto.new
  end

  def create
    @cover_photo = CoverPhoto.new
    @cover_photo.restaurant_id = params[:restaurant_id]
    @cover_photo.cover_photo = params[:cover_photo]

    if @cover_photo.save
      redirect_to "/cover_photos", :notice => "Cover photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @cover_photo = CoverPhoto.find(params[:id])
  end

  def update
    @cover_photo = CoverPhoto.find(params[:id])

    @cover_photo.restaurant_id = params[:restaurant_id]
    @cover_photo.cover_photo = params[:cover_photo]

    if @cover_photo.save
      redirect_to "/cover_photos", :notice => "Cover photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @cover_photo = CoverPhoto.find(params[:id])

    @cover_photo.destroy

    redirect_to "/cover_photos", :notice => "Cover photo deleted."
  end
end
