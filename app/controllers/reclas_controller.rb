class ReclasController < ApplicationController
  before_action :set_recla, only: [:show, :edit, :update, :destroy]

  # GET /reclas
  # GET /reclas.json
  def index
    @reclas = Recla.all
  end

  # GET /reclas/1
  # GET /reclas/1.json
  def show
  end

  # GET /reclas/new
  def new
    @recla = Recla.new
  end

  # GET /reclas/1/edit
  def edit
  end

  # POST /reclas
  # POST /reclas.json
  def create
    @recla = Recla.new(recla_params)

    respond_to do |format|
      if @recla.save
        format.html { redirect_to @recla, notice: 'Recla was successfully created.' }
        format.json { render :show, status: :created, location: @recla }
      else
        format.html { render :new }
        format.json { render json: @recla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reclas/1
  # PATCH/PUT /reclas/1.json
  def update
    respond_to do |format|
      if @recla.update(recla_params)
        format.html { redirect_to @recla, notice: 'Recla was successfully updated.' }
        format.json { render :show, status: :ok, location: @recla }
      else
        format.html { render :edit }
        format.json { render json: @recla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reclas/1
  # DELETE /reclas/1.json
  def destroy
    @recla.destroy
    respond_to do |format|
      format.html { redirect_to reclas_url, notice: 'Recla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recla
      @recla = Recla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recla_params
      params.require(:recla).permit(:tienda, :reclam, :cliente_id)
    end
end
