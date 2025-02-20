class HistoricoAcaoController < ApplicationController
  before_action :set_historico_acao, only: %i[ show edit update destroy ]

  # GET /historico_acao or /historico_acao.json
  def index
    @historico_acao = HistoricoAcao.all
  end

  # GET /historico_acao/1 or /historico_acao/1.json
  def show
  end

  # GET /historico_acao/new
  def new
    @historico_acao = HistoricoAcao.new
  end

  # GET /historico_acao/1/edit
  def edit
  end

  # POST /historico_acao or /historico_acao.json
  def create
    @historico_acao = HistoricoAcao.new(historico_acao_params)

    respond_to do |format|
      if @historico_acao.save
        format.html { redirect_to @historico_acao, notice: "Historico acao was successfully created." }
        format.json { render :show, status: :created, location: @historico_acao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historico_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historico_acao/1 or /historico_acao/1.json
  def update
    respond_to do |format|
      if @historico_acao.update(historico_acao_params)
        format.html { redirect_to @historico_acao, notice: "Historico acao was successfully updated." }
        format.json { render :show, status: :ok, location: @historico_acao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historico_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historico_acao/1 or /historico_acao/1.json
  def destroy
    @historico_acao.destroy!

    respond_to do |format|
      format.html { redirect_to historico_acao_path, status: :see_other, notice: "Historico acao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historico_acao
      @historico_acao = HistoricoAcao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def historico_acao_params
      params.expect(historico_acao: [ :pessoa_id, :acao_id ])
    end
end
