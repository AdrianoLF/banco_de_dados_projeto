class PontuacaoPessoasController < ApplicationController
  before_action :set_pontuacao_pessoa, only: %i[ show edit update destroy ]

  # GET /pontuacao_pessoas or /pontuacao_pessoas.json
  def index
    @pontuacao_pessoas = PontuacaoPessoa.all
  end

  # GET /pontuacao_pessoas/1 or /pontuacao_pessoas/1.json
  def show
  end

  # GET /pontuacao_pessoas/new
  def new
    @pontuacao_pessoa = PontuacaoPessoa.new
  end

  # GET /pontuacao_pessoas/1/edit
  def edit
  end

  # POST /pontuacao_pessoas or /pontuacao_pessoas.json
  def create
    @pontuacao_pessoa = PontuacaoPessoa.new(pontuacao_pessoa_params)

    respond_to do |format|
      if @pontuacao_pessoa.save
        format.html { redirect_to @pontuacao_pessoa, notice: "Pontuacao pessoa was successfully created." }
        format.json { render :show, status: :created, location: @pontuacao_pessoa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pontuacao_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pontuacao_pessoas/1 or /pontuacao_pessoas/1.json
  def update
    respond_to do |format|
      if @pontuacao_pessoa.update(pontuacao_pessoa_params)
        format.html { redirect_to @pontuacao_pessoa, notice: "Pontuacao pessoa was successfully updated." }
        format.json { render :show, status: :ok, location: @pontuacao_pessoa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pontuacao_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pontuacao_pessoas/1 or /pontuacao_pessoas/1.json
  def destroy
    @pontuacao_pessoa.destroy!

    respond_to do |format|
      format.html { redirect_to pontuacao_pessoas_path, status: :see_other, notice: "Pontuacao pessoa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pontuacao_pessoa
      @pontuacao_pessoa = PontuacaoPessoa.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pontuacao_pessoa_params
      params.expect(pontuacao_pessoa: [ :pontuacao_total ])
    end
end
