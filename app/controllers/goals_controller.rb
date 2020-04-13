class GoalsController < ApplicationController
    # before any action, our set_goal method will run
    before_action :set_goal, only: [:show, :destroy, :toggle]

    def index
        @goals = Goal.all 
        render json: @goals
    end

    def show
        # @goal = Goal.find(params[:id])
        render json: @goal
    end

    def create
        @goal = Goal.create(goal_params)
        # status needed here?
        render json: @goal, status: :created
    end

    # Alternative to the above action
    # def create
    #     @goal = Goal.new(goal_params)
    #     if @goal.save
    #       render json: @goal
    #     else
    #       render json: {error: 'Error creating goal'}
    #     end
    # end

    def destroy
        @goal.destroy 
        render json: @goal
    end

    # alternative to the above
    # def destroy
    #     @goal = Goal.find(params[:id])
    #     @goal.destroy
    # end

    def toggle
        @goal.toggle!(:completed)
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
