class   Api::V1::TrainersController < ApplicationController
  before_action :set_trainer, only: %i[ show update destroy ]

  # GET /trainers
  def index
    @trainers = Trainer.all

    render json: @trainers
  end

  # GET /trainers/1
  def show
    render json: @trainer
  end

  # POST /trainers
  def create
    @trainer = Trainer.new(trainer_params)

    if @trainer.save
      render json: @trainer, status: :created, location: @trainer
    else
      render json: @trainer.errors, status: :unprocessable_entity
    end
  end

  #POST /trainers/1/teams
  def create_team
    @trainer = Trainer.find(params[:id])
    @team = @trainer.build_team(team_params)

    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trainers/1
  def update
    if @trainer.update(trainer_params)
      render json: @trainer
    else
      render json: @trainer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trainers/1
  def destroy
    @trainer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainer
      @trainer = Trainer.find(params[:id])
    end

    # Only allow a list of trusted parameters through for trainers.
    def trainer_params
      params.require(:trainer).permit(:name)
    end

    def team_params
      params.require(:team).permit(:trainer_id)
    end
end
