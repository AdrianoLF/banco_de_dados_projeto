class GeneroAcaosController < ApplicationController
  before_action :set_genero_acao, only: %i[ show edit update destroy ]

  # GET /genero_acaos or /genero_acaos.json
  def index
    @genero_acaos = GeneroAcao.all
  end

  # GET /genero_acaos/1 or /genero_acaos/1.json
  def show
  end

  # GET /genero_acaos/new
  def new
    @genero_acao = GeneroAcao.new
  end

  # GET /genero_acaos/1/edit
  def edit
  end

  # POST /genero_acaos or /genero_acaos.json
  def create
    @genero_acao = GeneroAcao.new(genero_acao_params)

    respond_to do |format|
      if @genero_acao.save
        format.html { redirect_to @genero_acao, notice: "Genero acao was successfully created." }
        format.json { render :show, status: :created, location: @genero_acao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @genero_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genero_acaos/1 or /genero_acaos/1.json
  def update
    respond_to do |format|
      if @genero_acao.update(genero_acao_params)
        format.html { redirect_to @genero_acao, notice: "Genero acao was successfully updated." }
        format.json { render :show, status: :ok, location: @genero_acao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genero_acao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genero_acaos/1 or /genero_acaos/1.json
  def destroy
    @genero_acao.destroy!

    respond_to do |format|
      format.html { redirect_to genero_acaos_path, status: :see_other, notice: "Genero acao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genero_acao
      @genero_acao = GeneroAcao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def genero_acao_params
      params.expect(genero_acao: [ :descricao ])
    end
end
