class PremiosCategoriasController < ApplicationController
  before_action :set_premio_categoria, only: %i[ show edit update destroy ]

  # GET /premio_categoria or /premio_categoria.json
  def index
    @premios_categorias = PremioCategoria.all
  end

  # GET /premio_categoria/1 or /premio_categoria/1.json
  def show
  end

  # GET /premio_categoria/new
  def new
    @premio_categoria = PremioCategoria.new
  end

  # GET /premio_categoria/1/edit
  def edit
  end

  # POST /premio_categoria or /premio_categoria.json
  def create
    @premio_categoria = PremioCategoria.new(premio_categoria_params)

    respond_to do |format|
      if @premio_categoria.save
        format.html { redirect_to @premio_categoria, notice: "Premio categoria was successfully created." }
        format.json { render :show, status: :created, location: @premio_categoria }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @premio_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /premio_categoria/1 or /premio_categoria/1.json
  def update
    respond_to do |format|
      if @premio_categoria.update(premio_categoria_params)
        format.html { redirect_to @premio_categoria, notice: "Premio categoria was successfully updated." }
        format.json { render :show, status: :ok, location: @premio_categoria }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @premio_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /premio_categoria/1 or /premio_categoria/1.json
  def destroy
    @premio_categoria.destroy!

    respond_to do |format|
      format.html { redirect_to premio_categoria_path, status: :see_other, notice: "Premio categoria was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_premio_categoria
      @premio_categoria = PremioCategoria.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def premio_categoria_params
      params.expect(premio_categoria: [ :premio_id, :categoria_premio_id ])
    end
end
