class GoalsController < ApplicationController
    # before any action, our set_goal method will run
    before_action :set_goal, only: [:show, :destroy, :toggle]

    # show all goals and render as JSON
    def index
        @goals = Goal.all 
        render json: @goals
    end

    def show
        # @goal = Goal.find(params[:id]) -- not needed due to before_action of :set_goal
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
        @goal.toggle!(:completed)
        render json: @goal
    end

    private

    # our params require a goal and permit the attributes of aim and strategy
    def goal_params
        params.require(:goal).permit(:aim, :strategy)
    end

    # we want an index of all transactions associated with a specific account - this will run before any of our routes above
    def set_goal
        @goal = Goal.find(params[:id])
    end
end
