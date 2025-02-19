class LocalAcaosController < ApplicationController
  before_action :set_local_acao, only: %i[ show edit update destroy ]

  # GET /local_acaos or /local_acaos.json
  def index
    @local_acaos = LocalAcao.all
  end

  # GET /local_acaos/1 or /local_acaos/1.json
  def show
  end

  # GET /local_acaos/new
  def new
    @local_acao = LocalAcao.new
  end

  # GET /local_acaos/1/edit
  def edit
  end

  # POST /local_acaos or /local_acaos.json
  def create
    @local_acao = LocalAcao.new(local_acao_params)

    respond_to do |format|
      if @local_acao.save
        format.html { redirect_to @local_acao, notice: "Local acao was successfully created." }
        format.json { render :show, status: :created, location: @local_acao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @local_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_acaos/1 or /local_acaos/1.json
  def update
    respond_to do |format|
      if @local_acao.update(local_acao_params)
        format.html { redirect_to @local_acao, notice: "Local acao was successfully updated." }
        format.json { render :show, status: :ok, location: @local_acao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @local_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_acaos/1 or /local_acaos/1.json
  def destroy
    @local_acao.destroy!

    respond_to do |format|
      format.html { redirect_to local_acaos_path, status: :see_other, notice: "Local acao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_acao
      @local_acao = LocalAcao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def local_acao_params
      params.expect(local_acao: [ :nome_local, :endereco ])
    end
end
