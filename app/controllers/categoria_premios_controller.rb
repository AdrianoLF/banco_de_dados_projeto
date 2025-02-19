class CategoriaPremiosController < ApplicationController
  before_action :set_categoria_premio, only: %i[ show edit update destroy ]

  # GET /categoria_premios or /categoria_premios.json
  def index
    @categoria_premios = CategoriaPremio.all
  end

  # GET /categoria_premios/1 or /categoria_premios/1.json
  def show
  end

  # GET /categoria_premios/new
  def new
    @categoria_premio = CategoriaPremio.new
  end

  # GET /categoria_premios/1/edit
  def edit
  end

  # POST /categoria_premios or /categoria_premios.json
  def create
    @categoria_premio = CategoriaPremio.new(categoria_premio_params)

    respond_to do |format|
      if @categoria_premio.save
        format.html { redirect_to @categoria_premio, notice: "Categoria premio was successfully created." }
        format.json { render :show, status: :created, location: @categoria_premio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoria_premio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria_premios/1 or /categoria_premios/1.json
  def update
    respond_to do |format|
      if @categoria_premio.update(categoria_premio_params)
        format.html { redirect_to @categoria_premio, notice: "Categoria premio was successfully updated." }
        format.json { render :show, status: :ok, location: @categoria_premio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoria_premio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_premios/1 or /categoria_premios/1.json
  def destroy
    @categoria_premio.destroy!

    respond_to do |format|
      format.html { redirect_to categoria_premios_path, status: :see_other, notice: "Categoria premio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_premio
      @categoria_premio = CategoriaPremio.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def categoria_premio_params
      params.expect(categoria_premio: [ :descricao ])
    end
end
