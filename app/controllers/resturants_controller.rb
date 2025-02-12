class ResturantsController < ApplicationController
  before_action :set_resturant, only: %i[ show edit update destroy ]

  # GET /resturants or /resturants.json
  def index
    @resturants = Resturant.all
  end

  # GET /resturants/1 or /resturants/1.json
  def show
  end

  # GET /resturants/new
  def new
    @resturant = Resturant.new
  end

  # GET /resturants/1/edit
  def edit
  end

  # POST /resturants or /resturants.json
  def create
    @resturant = Resturant.new(resturant_params)

    respond_to do |format|
      if @resturant.save
        format.html { redirect_to @resturant, notice: "Resturant was successfully created." }
        format.json { render :show, status: :created, location: @resturant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resturant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resturants/1 or /resturants/1.json
  def update
    respond_to do |format|
      if @resturant.update(resturant_params)
        format.html { redirect_to @resturant, notice: "Resturant was successfully updated." }
        format.json { render :show, status: :ok, location: @resturant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resturant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resturants/1 or /resturants/1.json
  def destroy
    @resturant.destroy!

    respond_to do |format|
      format.html { redirect_to resturants_path, status: :see_other, notice: "Resturant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resturant
      @resturant = Resturant.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def resturant_params
      params.expect(resturant: [ :name, :cusine, :type, :age ])
    end
end
