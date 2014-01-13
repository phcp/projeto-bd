class ClienteFisicosController < ApplicationController
  before_action :set_cliente_fisico, only: [:show, :edit, :update, :destroy]

  # GET /cliente_fisicos
  # GET /cliente_fisicos.json
  def index
    @cliente_fisicos = ClienteFisico.all
  end

  # GET /cliente_fisicos/1
  # GET /cliente_fisicos/1.json
  def show
  end

  # GET /cliente_fisicos/new
  def new
    @cliente_fisico = ClienteFisico.new
  end

  # GET /cliente_fisicos/1/edit
  def edit
  end

  # POST /cliente_fisicos
  # POST /cliente_fisicos.json
  def create
    @cliente_fisico = ClienteFisico.new(cliente_fisico_params)

    respond_to do |format|
      if @cliente_fisico.save
        format.html { redirect_to @cliente_fisico, notice: 'Cliente fisico was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cliente_fisico }
      else
        format.html { render action: 'new' }
        format.json { render json: @cliente_fisico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_fisicos/1
  # PATCH/PUT /cliente_fisicos/1.json
  def update
    respond_to do |format|
      if @cliente_fisico.update(cliente_fisico_params)
        format.html { redirect_to @cliente_fisico, notice: 'Cliente fisico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cliente_fisico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_fisicos/1
  # DELETE /cliente_fisicos/1.json
  def destroy
    @cliente_fisico.destroy
    respond_to do |format|
      format.html { redirect_to cliente_fisicos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_fisico
      @cliente_fisico = ClienteFisico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_fisico_params
      params.require(:cliente_fisico).permit(:cpf, :cliente_id)
    end
end
