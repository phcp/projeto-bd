class ProducaosController < ApplicationController
  before_action :set_producao, only: [:show, :edit, :update, :destroy]

  # GET /producaos
  # GET /producaos.json
  def index
    @producaos = Producao.all
  end

  # GET /producaos/1
  # GET /producaos/1.json
  def show
  end

  # GET /producaos/new
  def new
    @producao = Producao.new
  end

  # GET /producaos/1/edit
  def edit
  end

  # POST /producaos
  # POST /producaos.json
  def create
    @producao = Producao.new(producao_params)

    respond_to do |format|
      if @producao.save
        format.html { redirect_to @producao, notice: 'Producao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @producao }
      else
        format.html { render action: 'new' }
        format.json { render json: @producao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producaos/1
  # PATCH/PUT /producaos/1.json
  def update
    respond_to do |format|
      if @producao.update(producao_params)
        format.html { redirect_to @producao, notice: 'Producao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @producao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producaos/1
  # DELETE /producaos/1.json
  def destroy
    @producao.destroy
    respond_to do |format|
      format.html { redirect_to producaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producao
      @producao = Producao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producao_params
      params.require(:producao).permit(:data, :quantidade, :produto_id, :materiaprima_id)
    end
end
