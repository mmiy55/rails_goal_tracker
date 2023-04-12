class GoalsController < ApplicationController
  before_action :set_goal, only: [:complete, :edit, :update, :destroy]

  def index
    # @user_goals = Goal.where(user: current_user) if current_user != admin
    # @goals = policy_scope(Goal).order(:completed, :created_at)
    @goals = policy_scope(Goal).where(user: current_user)
    @completed_goals = @goals.where(completed: true)
    @ongoing_goals = @goals.where(completed: false)
  end

  def new
    @goal = Goal.new
    authorize @goal
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user = current_user
    if @goal.save
      redirect_to goals_path
      authorize @goal
    # else
      #  render
    end
  end

  def edit
  end

  def complete
    @goal.completed = true
    @goal.save
    redirect_to goals_path
  end

  def update
    @goal.update(goal_params)
    @goal.save
    redirect_to goals_path
  end

  def destroy
    @goal.destroy
    redirect_to goals_path
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
    authorize @goal
  end

  def goal_params
    params.require(:goal).permit(:category, :title, :description, :photo )
  end

end
