class PessoasLocaisController < ApplicationController
  before_action :set_pessoa_local, only: %i[ show edit update destroy ]

  # GET /pessoas_locais or /pessoas_locais.json
  def index
    @pessoas_locais = PessoaLocal.all
  end

  # GET /pessoas_locais/1 or /pessoas_locais/1.json
  def show
  end

  # GET /pessoas_locais/new
  def new
    @pessoa_local = PessoaLocal.new
  end

  # GET /pessoas_locais/1/edit
  def edit
  end

  # POST /pessoas_locais or /pessoas_locais.json
  def create
    @pessoa_local = PessoaLocal.new(pessoa_local_params)

    respond_to do |format|
      if @pessoa_local.save
        format.html { redirect_to @pessoa_local, notice: "Pessoa local was successfully created." }
        format.json { render :show, status: :created, location: @pessoa_local }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pessoa_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoas_locais/1 or /pessoas_locais/1.json
  def update
    respond_to do |format|
      if @pessoa_local.update(pessoa_local_params)
        format.html { redirect_to @pessoa_local, notice: "Pessoa local was successfully updated." }
        format.json { render :show, status: :ok, location: @pessoa_local }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pessoa_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas_locais/1 or /pessoas_locais/1.json
  def destroy
    @pessoa_local.destroy!

    respond_to do |format|
      format.html { redirect_to pessoa_locais_path, status: :see_other, notice: "Pessoa local was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa_local
      @pessoa_local = PessoaLocal.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pessoa_local_params
      params.expect(pessoa_local: [ :pessoa_id, :local_id, :data_visita ])
    end
end
