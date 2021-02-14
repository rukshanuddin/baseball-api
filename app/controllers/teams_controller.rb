class TeamsController < ApplicationController
    before_action :find_player, only: :show
    def index
        @teams = Team.all
        render json: @teams
    end
    def ranked
        @teams = Team.all.sort_by { |hash| hash['RBI'] }.reverse
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
