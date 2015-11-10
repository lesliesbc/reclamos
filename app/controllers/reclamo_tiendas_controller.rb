class ReclamoTiendasController < ApplicationController
  before_action :set_reclamo_tienda, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reclamo_tiendas = ReclamoTienda.all
    respond_with(@reclamo_tiendas)
  end

  def show
    respond_with(@reclamo_tienda)
  end

  def new
    @reclamo_tienda = ReclamoTienda.new
    respond_with(@reclamo_tienda)
  end

  def edit
  end

  def create
    @reclamo_tienda = ReclamoTienda.new(reclamo_tienda_params)
    @reclamo_tienda.save
    respond_with(@reclamo_tienda)
  end

  def update
    @reclamo_tienda.update(reclamo_tienda_params)
    respond_with(@reclamo_tienda)
  end

  def destroy
    @reclamo_tienda.destroy
    respond_with(@reclamo_tienda)
  end

  private
    def set_reclamo_tienda
      @reclamo_tienda = ReclamoTienda.find(params[:id])
    end

    def reclamo_tienda_params
      params.require(:reclamo_tienda).permit(:recla_id, :tienda_id)
    end
end
