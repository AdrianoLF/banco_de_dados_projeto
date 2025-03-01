class ResgatesController < ApplicationController
  before_action :set_resgate, only: %i[ show edit update destroy ]

  # GET /resgates or /resgates.json
  def index
    @resgates = Resgate.all
  end

  # GET /resgates/1 or /resgates/1.json
  def show
  end

  # GET /resgates/new
  def new
    @resgate = Resgate.new
  end

  # GET /resgates/1/edit
  def edit
  end

  # POST /resgates or /resgates.json
  def create
    @resgate = Resgate.new(resgate_params)

    respond_to do |format|
      if @resgate.save
        format.html { redirect_to @resgate, notice: "Resgate was successfully created." }
        format.json { render :show, status: :created, location: @resgate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resgate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resgates/1 or /resgates/1.json
  def update
    respond_to do |format|
      if @resgate.update(resgate_params)
        format.html { redirect_to @resgate, notice: "Resgate was successfully updated." }
        format.json { render :show, status: :ok, location: @resgate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resgate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resgates/1 or /resgates/1.json
  def destroy
    @resgate.destroy!

    respond_to do |format|
      format.html { redirect_to resgates_path, status: :see_other, notice: "Resgate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resgate
      @resgate = Resgate.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def resgate_params
      params.expect(resgate: [ :pessoa_id, :data_resgate ])
    end
end
