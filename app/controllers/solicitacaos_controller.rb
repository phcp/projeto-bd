class SolicitacaosController < ApplicationController
  before_action :set_solicitacao, only: [:show, :edit, :update, :destroy]

  # GET /solicitacaos
  # GET /solicitacaos.json
  def index
    @solicitacaos = Solicitacao.all
  end

  # GET /solicitacaos/1
  # GET /solicitacaos/1.json
  def show
  end

  # GET /solicitacaos/new
  def new
    @solicitacao = Solicitacao.new
  end

  # GET /solicitacaos/1/edit
  def edit
  end

  # POST /solicitacaos
  # POST /solicitacaos.json
  def create
    @solicitacao = Solicitacao.new(solicitacao_params)

    respond_to do |format|
      if @solicitacao.save
        format.html { redirect_to @solicitacao, notice: 'Solicitacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @solicitacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @solicitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacaos/1
  # PATCH/PUT /solicitacaos/1.json
  def update
    respond_to do |format|
      if @solicitacao.update(solicitacao_params)
        format.html { redirect_to @solicitacao, notice: 'Solicitacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @solicitacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacaos/1
  # DELETE /solicitacaos/1.json
  def destroy
    @solicitacao.destroy
    respond_to do |format|
      format.html { redirect_to solicitacaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao
      @solicitacao = Solicitacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_params
      params.require(:solicitacao).permit(:status, :data, :desconto, :pagamento, :cliente_id, :produto_id, :pessoa_id)
    end
end
