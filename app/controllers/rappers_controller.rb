class RappersController < ApplicationController
  before_action :set_rapper, only: %i[ show edit update destroy ]

  # GET /rappers or /rappers.json
  def index
    @rappers = Rapper.all
  end

  # GET /rappers/1 or /rappers/1.json
  def show
  end

  # GET /rappers/new
  def new
    @rapper = Rapper.new
  end

  # GET /rappers/1/edit
  def edit
  end

  # POST /rappers or /rappers.json
  def create
    @rapper = Rapper.new(rapper_params)

    respond_to do |format|
      if @rapper.save
        format.html { redirect_to rapper_url(@rapper), notice: "Rapper was successfully created." }
        format.json { render :show, status: :created, location: @rapper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rappers/1 or /rappers/1.json
  def update
    respond_to do |format|
      if @rapper.update(rapper_params)
        format.html { redirect_to rapper_url(@rapper), notice: "Rapper was successfully updated." }
        format.json { render :show, status: :ok, location: @rapper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rappers/1 or /rappers/1.json
  def destroy
    @rapper.destroy!

    respond_to do |format|
      format.html { redirect_to rappers_url, notice: "Rapper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rapper
      @rapper = Rapper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rapper_params
      params.require(:rapper).permit(:image, :name)
    end
end
