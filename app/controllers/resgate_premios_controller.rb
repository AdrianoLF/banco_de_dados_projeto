class ResgatePremiosController < ApplicationController
  before_action :set_resgate_premio, only: %i[ show edit update destroy ]

  # GET /resgate_premios or /resgate_premios.json
  def index
    @resgate_premios = ResgatePremio.all
  end

  # GET /resgate_premios/1 or /resgate_premios/1.json
  def show
  end

  # GET /resgate_premios/new
  def new
    @resgate_premio = ResgatePremio.new
  end

  # GET /resgate_premios/1/edit
  def edit
  end

  # POST /resgate_premios or /resgate_premios.json
  def create
    @resgate_premio = ResgatePremio.new(resgate_premio_params)

    respond_to do |format|
      if @resgate_premio.save
        format.html { redirect_to @resgate_premio, notice: "Resgate premio was successfully created." }
        format.json { render :show, status: :created, location: @resgate_premio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resgate_premio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resgate_premios/1 or /resgate_premios/1.json
  def update
    respond_to do |format|
      if @resgate_premio.update(resgate_premio_params)
        format.html { redirect_to @resgate_premio, notice: "Resgate premio was successfully updated." }
        format.json { render :show, status: :ok, location: @resgate_premio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resgate_premio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resgate_premios/1 or /resgate_premios/1.json
  def destroy
    @resgate_premio.destroy!

    respond_to do |format|
      format.html { redirect_to resgate_premios_path, status: :see_other, notice: "Resgate premio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resgate_premio
      @resgate_premio = ResgatePremio.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def resgate_premio_params
      params.expect(resgate_premio: [ :resgate_id, :premio_id, :pontos_utilizados ])
    end
end
