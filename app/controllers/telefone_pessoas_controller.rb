class TelefonePessoasController < ApplicationController
  before_action :set_telefone_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /telefone_pessoas
  # GET /telefone_pessoas.json
  def index
    @telefone_pessoas = TelefonePessoa.all
  end

  # GET /telefone_pessoas/1
  # GET /telefone_pessoas/1.json
  def show
  end

  # GET /telefone_pessoas/new
  def new
    @telefone_pessoa = TelefonePessoa.new
  end

  # GET /telefone_pessoas/1/edit
  def edit
  end

  # POST /telefone_pessoas
  # POST /telefone_pessoas.json
  def create
    @telefone_pessoa = TelefonePessoa.new(telefone_pessoa_params)

    respond_to do |format|
      if @telefone_pessoa.save
        format.html { redirect_to @telefone_pessoa, notice: 'Telefone pessoa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @telefone_pessoa }
      else
        format.html { render action: 'new' }
        format.json { render json: @telefone_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telefone_pessoas/1
  # PATCH/PUT /telefone_pessoas/1.json
  def update
    respond_to do |format|
      if @telefone_pessoa.update(telefone_pessoa_params)
        format.html { redirect_to @telefone_pessoa, notice: 'Telefone pessoa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @telefone_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telefone_pessoas/1
  # DELETE /telefone_pessoas/1.json
  def destroy
    @telefone_pessoa.destroy
    respond_to do |format|
      format.html { redirect_to telefone_pessoas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telefone_pessoa
      @telefone_pessoa = TelefonePessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telefone_pessoa_params
      params.require(:telefone_pessoa).permit(:ddd, :telefone, :pessoa_id)
    end
end
