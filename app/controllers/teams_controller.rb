class TeamsController < ApplicationController
  before_action :find_team, only: :show
  def index
    @teams = Team.all
    paginate json: @teams
  end

  #  Get a ranked list of teams
  def wins
    @teams = Team.all.sort_by { |hash| hash['wins'] }.reverse
    render json: @teams
  end

  def show
    render json: @team
  end

  private

  def find_team
    @team = Team.find(params[:id])
  end
end
