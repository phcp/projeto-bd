class ClienteJuridicosController < ApplicationController
  before_action :set_cliente_juridico, only: [:show, :edit, :update, :destroy]

  # GET /cliente_juridicos
  # GET /cliente_juridicos.json
  def index
    @cliente_juridicos = ClienteJuridico.all
  end

  # GET /cliente_juridicos/1
  # GET /cliente_juridicos/1.json
  def show
  end

  # GET /cliente_juridicos/new
  def new
    @cliente_juridico = ClienteJuridico.new
  end

  # GET /cliente_juridicos/1/edit
  def edit
  end

  # POST /cliente_juridicos
  # POST /cliente_juridicos.json
  def create
    @cliente_juridico = ClienteJuridico.new(cliente_juridico_params)

    respond_to do |format|
      if @cliente_juridico.save
        format.html { redirect_to @cliente_juridico, notice: 'Cliente juridico was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cliente_juridico }
      else
        format.html { render action: 'new' }
        format.json { render json: @cliente_juridico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_juridicos/1
  # PATCH/PUT /cliente_juridicos/1.json
  def update
    respond_to do |format|
      if @cliente_juridico.update(cliente_juridico_params)
        format.html { redirect_to @cliente_juridico, notice: 'Cliente juridico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cliente_juridico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_juridicos/1
  # DELETE /cliente_juridicos/1.json
  def destroy
    @cliente_juridico.destroy
    respond_to do |format|
      format.html { redirect_to cliente_juridicos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_juridico
      @cliente_juridico = ClienteJuridico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_juridico_params
      params.require(:cliente_juridico).permit(:cnpj, :cliente_id)
    end
end
