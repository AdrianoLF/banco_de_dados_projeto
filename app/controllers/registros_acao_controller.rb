class RegistrosAcaoController < ApplicationController
  before_action :set_registro_acao, only: %i[ show edit update destroy ]

  # GET /registro_acoes or /registro_acoes.json
  def index
    @registro_acoes = RegistroAcao.all
  end

  # GET /registro_acoes/1 or /registro_acoes/1.json
  def show
  end

  # GET /registro_acoes/new
  def new
    @registro_acao = RegistroAcao.new
  end

  # GET /registro_acoes/1/edit
  def edit
  end

  # POST /registro_acoes or /registro_acoes.json
  def create
    @registro_acao = RegistroAcao.new(registro_acao_params)

    respond_to do |format|
      if @registro_acao.save
        format.html { redirect_to @registro_acao, notice: "Registro acao was successfully created." }
        format.json { render :show, status: :created, location: @registro_acao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_acoes/1 or /registro_acoes/1.json
  def update
    respond_to do |format|
      if @registro_acao.update(registro_acao_params)
        format.html { redirect_to @registro_acao, notice: "Registro acao was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_acao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_acoes/1 or /registro_acoes/1.json
  def destroy
    @registro_acao.destroy!

    respond_to do |format|
      format.html { redirect_to registro_acaos_path, status: :see_other, notice: "Registro acao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_acao
      @registro_acao = RegistroAcao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def registro_acao_params
      params.expect(registro_acao: [ :acao_id, :data_execucao ])
    end
end
