class CropsController < ApplicationController
  def index
    @crops = policy_scope(Crop).all
    @favorite_crops = current_user.favorites_by_type('Crop').count
  end

  def show
    @crop = Crop.find(params[:id])
    authorize @crop
  end

  def toggle_favorite
    @crop = Crop.find_by(id: params[:id])
    authorize @crop
    current_user.favorited?(@crop) ? current_user.unfavorite(@crop) : current_user.favorite(@crop)

    respond_to do |format|
      format.json { render json: @crop }
    end
  end

  def favorite
    @favorites = current_user.favorited_by_type('Crop')
    authorize @favorites
  end
end
