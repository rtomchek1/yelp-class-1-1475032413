class UserPhotosController < ApplicationController
  def index
    @user_photos = UserPhoto.all
  end

  def show
    @user_photo = UserPhoto.find(params[:id])
  end

  def new
    @user_photo = UserPhoto.new
  end

  def create
    @user_photo = UserPhoto.new
    @user_photo.image = params[:image]
    @user_photo.restaurant_id = params[:restaurant_id]

    if @user_photo.save
      redirect_to "/user_photos", :notice => "User photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_photo = UserPhoto.find(params[:id])
  end

  def update
    @user_photo = UserPhoto.find(params[:id])

    @user_photo.image = params[:image]
    @user_photo.restaurant_id = params[:restaurant_id]

    if @user_photo.save
      redirect_to "/user_photos", :notice => "User photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_photo = UserPhoto.find(params[:id])

    @user_photo.destroy

    redirect_to "/user_photos", :notice => "User photo deleted."
  end
end
