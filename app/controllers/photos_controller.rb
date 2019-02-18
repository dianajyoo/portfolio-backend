class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render json: @photos
  end

  def show
    @photo = Photo.find(params[:id])
    render json: @photo
  end

  def create
    @photo = Photo.create(params[:id])
    render json: @photo
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(Photo_params)
      render json: @photo, status: :ok
    else
      render json: {errors: @photo.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
  end

  private

  def photo_params
    params.require(:photo)
  end

end
