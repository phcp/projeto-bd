class CompraMateriaPrimasController < ApplicationController
  before_action :set_compra_materia_prima, only: [:show, :edit, :update, :destroy]

  # GET /compra_materia_primas
  # GET /compra_materia_primas.json
  def index
    @compra_materia_primas = CompraMateriaPrima.all
  end

  # GET /compra_materia_primas/1
  # GET /compra_materia_primas/1.json
  def show
  end

  # GET /compra_materia_primas/new
  def new
    @compra_materia_prima = CompraMateriaPrima.new
  end

  # GET /compra_materia_primas/1/edit
  def edit
  end

  # POST /compra_materia_primas
  # POST /compra_materia_primas.json
  def create
    @compra_materia_prima = CompraMateriaPrima.new(compra_materia_prima_params)

    respond_to do |format|
      if @compra_materia_prima.save
        format.html { redirect_to @compra_materia_prima, notice: 'Compra materia prima was successfully created.' }
        format.json { render action: 'show', status: :created, location: @compra_materia_prima }
      else
        format.html { render action: 'new' }
        format.json { render json: @compra_materia_prima.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compra_materia_primas/1
  # PATCH/PUT /compra_materia_primas/1.json
  def update
    respond_to do |format|
      if @compra_materia_prima.update(compra_materia_prima_params)
        format.html { redirect_to @compra_materia_prima, notice: 'Compra materia prima was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @compra_materia_prima.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compra_materia_primas/1
  # DELETE /compra_materia_primas/1.json
  def destroy
    @compra_materia_prima.destroy
    respond_to do |format|
      format.html { redirect_to compra_materia_primas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compra_materia_prima
      @compra_materia_prima = CompraMateriaPrima.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compra_materia_prima_params
      params.require(:compra_materia_prima).permit(:data, :status, :pagamento, :preco, :quantidade, :fornecedor_id, :materiaprima_id)
    end
end
