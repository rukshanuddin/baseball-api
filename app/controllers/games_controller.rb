class GamesController < ApplicationController
  before_action :find_game, only: :show

  # Get a list of games with their scores
  def index
    @games = Game.all
    render json: @games.to_json({ only: %i[date v_name v_team_earned_runs h_name h_team_earned_runs] })
  end

  def show
    render json: @game
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end
end
