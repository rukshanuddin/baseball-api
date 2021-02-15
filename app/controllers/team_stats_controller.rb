class TeamStatsController < ApplicationController
  before_action :find_team, only: :show
  def index
    @teams = TeamStat.all
    paginate json: @teams
  end

  #  Get a ranked list of teams
  def ranked
    @teams = TeamStat.all.sort_by { |hash| hash['RBI'] }.reverse
    render json: @teams
  end

  def show
    render json: @team
  end

  private

  def find_team
    @team = TeamStat.find(params[:id])
  end
end
