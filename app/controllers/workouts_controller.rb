class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
    @exercises = Exercise.randomthree
  end

  def create
    @workout = Workout.new(params[:workout])
    if @workout.save
      redirect_to workouts_path, notice: 'Workout was successfully saved.'
    else
      render 'new', notice: 'Something went wrong'
    end
  end

  def show
    @workout = Workout.find(params[:id])
    @exercises = @workout.exercises
  end
end
