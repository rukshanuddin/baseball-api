class PlayersController < ApplicationController
  before_action :find_player, only: %i[show update destroy]

  def index
    @players = Player.all
    paginate json: @players
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      render json: @player
    else
      render error: { error: 'Unable to create player.' }, status: 400
    end
  end

  def update
    if @player
      @player.update(player_params)
      render json: { message: 'Player successfully updated.' }, status: 200
    else
      render error: { error: 'Unable to update player.' }, status: 400
    end
  end

  def destroy
    if @player
      @player.destroy
      render json: { message: 'Player successfully deleted.' }, status: 200
    else
      render error: { error: 'Unable to delete player.' }, status: 400
    end
  end

  def upload_images
    @player.image_files.attach(params[:images])
  end

  def upload_videos
    @player.video_files.attach(params[:images])
  end

  # Get top scoring players
  def ranked
    @players = Player.all
    paginate json: @players
  end

  def show
    render json: @player
  end

  private

  def player_params
    params.require(:player_stat)
  end

  def find_player
    @player = Player.find(params[:id])
  end
end
