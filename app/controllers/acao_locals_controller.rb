class AcaoLocalsController < ApplicationController
  before_action :set_acao_local, only: %i[ show edit update destroy ]

  # GET /acao_locals or /acao_locals.json
  def index
    @acao_locals = AcaoLocal.all
  end

  # GET /acao_locals/1 or /acao_locals/1.json
  def show
  end

  # GET /acao_locals/new
  def new
    @acao_local = AcaoLocal.new
  end

  # GET /acao_locals/1/edit
  def edit
  end

  # POST /acao_locals or /acao_locals.json
  def create
    @acao_local = AcaoLocal.new(acao_local_params)

    respond_to do |format|
      if @acao_local.save
        format.html { redirect_to @acao_local, notice: "Acao local was successfully created." }
        format.json { render :show, status: :created, location: @acao_local }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acao_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acao_locals/1 or /acao_locals/1.json
  def update
    respond_to do |format|
      if @acao_local.update(acao_local_params)
        format.html { redirect_to @acao_local, notice: "Acao local was successfully updated." }
        format.json { render :show, status: :ok, location: @acao_local }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acao_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acao_locals/1 or /acao_locals/1.json
  def destroy
    @acao_local.destroy!

    respond_to do |format|
      format.html { redirect_to acao_locals_path, status: :see_other, notice: "Acao local was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acao_local
      @acao_local = AcaoLocal.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def acao_local_params
      params.expect(acao_local: [ :acao_id, :local_id, :disponibilidade ])
    end
end
