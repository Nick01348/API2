class ProductosController < ApplicationController
  before_action :set_produSeccion, only: [:seccion]
  before_action :set_producto, only: [:show, :update, :destroy]

  # GET /productos
  def index
    @productos = Producto.all

    render json: @productos.to_json(only: [:nombreProducto, :precio, :descripcion, :seccion_id])
  end

  # GET /productos/1
  def show
    render json: @producto.to_json(only: [:nombreProducto, :precio, :descripcion, :seccion_id])
  end

  def seccion
    render json: @produSeccion
  end
  
  # POST /productos
  def create
    @producto = Producto.new(producto_params)

    if @producto.save
      render json: @producto, status: :created, location: @producto
    else
      render json: @producto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /productos/1
  def update
    if @producto.update(producto_params)
      render json: @producto
    else
      render json: @producto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /productos/1
  def destroy
    @producto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end

    def set_produSeccion
      @produSeccion = Producto.where(seccion_id: params[:seccion_id])
    end

    # Only allow a trusted parameter "white list" through.
    def producto_params
      params.require(:producto).permit(:nombreProducto, :precio, :descripcion, :imagen, :seccion_id)
    end
end
