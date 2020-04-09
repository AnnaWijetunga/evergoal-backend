class GoalsController < ApplicationController
    before_action :set_goal, only: [:show, :destroy, :toggle]

    def index
        @goals = Goal.all 
        render json: @goals
    end

    def show
        render json: @goal
    end

    def create
        @goal = Goal.create(goal_params)
        render json: @goal
    end

    def destroy
        @goal.destroy 
        render json: @goal
    end

    def toggle
        @goal.toggle!
        render json: @goal
    end

    private

    def goal_params
        params.require(:goal).permit(:aim, :strategy)
    end

    def set_goal
        @goal = Goal.find(params[:id])
    end
end
