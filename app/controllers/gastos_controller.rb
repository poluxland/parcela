class GastosController < ApplicationController
  before_action :set_gasto, only: %i[ show edit update destroy ]

  # GET /gastos or /gastos.json
  def index
    @gastos = Gasto.all
  end

  # GET /gastos/1 or /gastos/1.json
  def show
  end

  # GET /gastos/new
  def new
    @gasto = Gasto.new
  end

  # GET /gastos/1/edit
  def edit
  end

  # POST /gastos or /gastos.json
  def create
    @gasto = Gasto.new(gasto_params)

    respond_to do |format|
      if @gasto.save
        format.html { redirect_to action: "index", notice: "Gasto creado." }
        format.json { render :show, status: :created, location: @gasto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gastos/1 or /gastos/1.json
  def update
    respond_to do |format|
      if @gasto.update(gasto_params)
        format.html { redirect_to @gasto, notice: "Gasto actualizado." }
        format.json { render :show, status: :ok, location: @gasto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastos/1 or /gastos/1.json
  def destroy
    @gasto.destroy
    respond_to do |format|
      format.html { redirect_to gastos_url, notice: "Gasto eliminado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gasto
      @gasto = Gasto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gasto_params
      params.require(:gasto).permit(:fecha, :descripcion, :monto, :comentarios, :estado)
    end
end
