class Memory1sController < ApplicationController
  before_action :set_memory1, only: [:show, :update, :destroy]

  # GET /memory1s
  def index
    @memory1s = Memory1.all

    render json: @memory1s
  end

  # GET /memory1s/1
  def show
    render json: @memory1
  end

  # POST /memory1s
  def create
    @memory1 = Memory1.new(memory1_params)

    if @memory1.save
      render json: @memory1, status: :created, location: @memory1
    else
      render json: @memory1.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /memory1s/1
  def update
    if @memory1.update(memory1_params)
      render json: @memory1
    else
      render json: @memory1.errors, status: :unprocessable_entity
    end
  end

  # DELETE /memory1s/1
  def destroy
    @memory1.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memory1
      @memory1 = Memory1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def memory1_params
      params.require(:memory1).permit(:img, :details, :level)
    end
end
