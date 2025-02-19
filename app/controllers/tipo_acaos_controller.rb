class TipoAcaosController < ApplicationController
  before_action :set_tipo_acao, only: %i[ show edit update destroy ]

  # GET /tipo_acaos or /tipo_acaos.json
  def index
    @tipo_acaos = TipoAcao.all
  end

  # GET /tipo_acaos/1 or /tipo_acaos/1.json
  def show
  end

  # GET /tipo_acaos/new
  def new
    @tipo_acao = TipoAcao.new
  end

  # GET /tipo_acaos/1/edit
  def edit
  end

  # POST /tipo_acaos or /tipo_acaos.json
  def create
    @tipo_acao = TipoAcao.new(tipo_acao_params)

    respond_to do |format|
      if @tipo_acao.save
        format.html { redirect_to @tipo_acao, notice: "Tipo acao was successfully created." }
        format.json { render :show, status: :created, location: @tipo_acao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_acaos/1 or /tipo_acaos/1.json
  def update
    respond_to do |format|
      if @tipo_acao.update(tipo_acao_params)
        format.html { redirect_to @tipo_acao, notice: "Tipo acao was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_acao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_acaos/1 or /tipo_acaos/1.json
  def destroy
    @tipo_acao.destroy!

    respond_to do |format|
      format.html { redirect_to tipo_acaos_path, status: :see_other, notice: "Tipo acao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_acao
      @tipo_acao = TipoAcao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tipo_acao_params
      params.expect(tipo_acao: [ :descricao ])
    end
end
