class MateriaPrimasController < ApplicationController
  before_action :set_materia_prima, only: [:show, :edit, :update, :destroy]

  # GET /materia_primas
  # GET /materia_primas.json
  def index
    @materia_primas = MateriaPrima.all
  end

  # GET /materia_primas/1
  # GET /materia_primas/1.json
  def show
  end

  # GET /materia_primas/new
  def new
    @materia_prima = MateriaPrima.new
  end

  # GET /materia_primas/1/edit
  def edit
  end

  # POST /materia_primas
  # POST /materia_primas.json
  def create
    @materia_prima = MateriaPrima.new(materia_prima_params)

    respond_to do |format|
      if @materia_prima.save
        format.html { redirect_to @materia_prima, notice: 'Materia prima was successfully created.' }
        format.json { render action: 'show', status: :created, location: @materia_prima }
      else
        format.html { render action: 'new' }
        format.json { render json: @materia_prima.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materia_primas/1
  # PATCH/PUT /materia_primas/1.json
  def update
    respond_to do |format|
      if @materia_prima.update(materia_prima_params)
        format.html { redirect_to @materia_prima, notice: 'Materia prima was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @materia_prima.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materia_primas/1
  # DELETE /materia_primas/1.json
  def destroy
    @materia_prima.destroy
    respond_to do |format|
      format.html { redirect_to materia_primas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materia_prima
      @materia_prima = MateriaPrima.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materia_prima_params
      params.require(:materia_prima).permit(:nome, :codigo, :descricao, :quantidade)
    end
end
