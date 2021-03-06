class EquipsController < ApplicationController
  before_action :set_equip, only: [:show, :update, :destroy]

  # GET /equips
  def index
    @equips = Equip.all

    render json: @equips
  end

  # GET /equips/1
  def show
    render json: @equip
  end

  # POST /equips
  def create
    @equip = Equip.new(equip_params)

    if @equip.save
      render json: @equip, status: :created
    else
      render json: @equip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /equips/1
  def update
    if @equip.update(equip_params)
      render json: @equip
    else
      render json: @equip.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equip
      @equip = Equip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def equip_params
      params.require(:equip).permit(:name, :description, :image)
    end
end