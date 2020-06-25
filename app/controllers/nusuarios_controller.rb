class NusuariosController < ApplicationController
  before_action :set_nusuario, only: [:show, :update, :destroy]

  # GET /nusuarios
  def index
    @nusuarios = Nusuario.all

    render json: @nusuarios
  end

  # GET /nusuarios/1
  def show
    render json: @nusuario
  end

  # POST /nusuarios
  def create
    @nusuario = Nusuario.new(nusuario_params)

    if @nusuario.save
      render json: @nusuario, status: :created, location: @nusuario
    else
      render json: @nusuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nusuarios/1
  def update
    if @nusuario.update(nusuario_params)
      render json: @nusuario
    else
      render json: @nusuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nusuarios/1
  def destroy
    @nusuario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nusuario
      @nusuario = Nusuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nusuario_params
      params.require(:nusuario).permit(:nombre, :apellido, :email, :password, :fechaNacimiento)
    end
end
