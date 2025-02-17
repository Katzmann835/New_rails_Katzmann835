class RestPricesController < ApplicationController
  before_action :set_rest_price, only: %i[ show edit update destroy ]

  # GET /rest_prices or /rest_prices.json
  def index
    @rest_prices = RestPrice.all
  end

  # GET /rest_prices/1 or /rest_prices/1.json
  def show
  end

  # GET /rest_prices/new
  def new
    @rest_price = RestPrice.new
  end

  # GET /rest_prices/1/edit
  def edit
  end

  # POST /rest_prices or /rest_prices.json
  def create
    @rest_price = RestPrice.new(rest_price_params)

    respond_to do |format|
      if @rest_price.save
        format.html { redirect_to @rest_price, notice: "Rest price was successfully created." }
        format.json { render :show, status: :created, location: @rest_price }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rest_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rest_prices/1 or /rest_prices/1.json
  def update
    respond_to do |format|
      if @rest_price.update(rest_price_params)
        format.html { redirect_to @rest_price, notice: "Rest price was successfully updated." }
        format.json { render :show, status: :ok, location: @rest_price }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rest_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rest_prices/1 or /rest_prices/1.json
  def destroy
    @rest_price.destroy!

    respond_to do |format|
      format.html { redirect_to rest_prices_path, status: :see_other, notice: "Rest price was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rest_price
      @rest_price = RestPrice.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def rest_price_params
      params.expect(rest_price: [ :price_id, :resturant_id ])
      p params
    end
end
