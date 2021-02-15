class PlayerStatsController < ApplicationController
  before_action :find_player, only: :show

  def index
    @players = PlayerStat.all
    paginate json: @players
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      render json: @player
    else
      render error: { error: 'Unable to create player stats.' }, status: 400
    end
  end

  def update
    if @player
      @player.update(player_params)
      render json: { message: 'Stats successfully updated.' }, status: 200
    else
      render error: { error: 'Unable to update stats.' }, status: 400
    end
  end

  def destroy
    if @player
      @player.destroy
      render json: { message: 'Player successfully deleted.' }, status: 200
    else
      render error: { error: 'Unable to delete player stats.' }, status: 400
    end
  end

  # Get top scoring players
  def ranked
    @players = PlayerStat.all.sort_by { |hash| hash['R'] }.reverse
    render json: @players
  end

  def show
    render json: @player
  end

  private

  def stat_params
    params.require(:player_stat)
  end

  def find_player
    @player = PlayerStat.find(params[:id])
  end
end
