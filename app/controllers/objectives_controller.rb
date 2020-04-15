class ObjectivesController < ApplicationController
    # before any action, our set_goal and set_objective methods will run
    before_action :set_goal
    before_action :set_objective, only: [:show]

    # load all objectives, which belong to a goal
    def index
        @objectives = @goal.objectives.all 
        render json: @objectives 
    end

    # dispaly an objective by id
    def show
        @objective = Objective.find(params[:id])
        render json: @objective
    end

    # create a new objective, nested under a goal
    def create
        @objective = @goal.objectives.create(objective_params)
        render json: @objective
    end

    # toggle an objective as completed or incomplete (checkbox)
    def toggle
        @objective = Objective.find(params[:id])
        @objective.toggle!(:completed)
        render json: @objective 
    end

    # permanently delete an objective after finding it by id
    def destroy
        @objective = Objective.find(params[:id])
        @objective.destroy
        render json: @objective 
    end

    private

    # params require an objective and permit the attribute of description to be modified
    def objective_params
        params.require(:objective).permit(:description)
    end

    # finds a goal by id
    def set_goal
        @goal = Goal.find_by(id: params[:goal_id])
    end

    # finds an objective which belongs to a goal by id
    def set_objective
        @objective = @goal.objectives.find_by(id: params[:id])
    end
end
