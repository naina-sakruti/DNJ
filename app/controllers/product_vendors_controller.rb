class ProductVendorsController < ApplicationController
  before_action :set_product_vendor, only: [:show, :edit, :update, :destroy]

  # GET /product_vendors
  # GET /product_vendors.json
  def index
    @product_vendors = ProductVendor.all
  end

  # GET /product_vendors/1
  # GET /product_vendors/1.json
  def show
  end

  # GET /product_vendors/new
  def new
    @product_vendor = ProductVendor.new
  end

  # GET /product_vendors/1/edit
  def edit
  end

  # POST /product_vendors
  # POST /product_vendors.json
  def create
    @product_vendor = ProductVendor.new(product_vendor_params)

    respond_to do |format|
      if @product_vendor.save
        format.html { redirect_to @product_vendor, notice: 'Product vendor was successfully created.' }
        format.json { render :show, status: :created, location: @product_vendor }
      else
        format.html { render :new }
        format.json { render json: @product_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_vendors/1
  # PATCH/PUT /product_vendors/1.json
  def update
    respond_to do |format|
      if @product_vendor.update(product_vendor_params)
        format.html { redirect_to @product_vendor, notice: 'Product vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_vendor }
      else
        format.html { render :edit }
        format.json { render json: @product_vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_vendors/1
  # DELETE /product_vendors/1.json
  def destroy
    @product_vendor.destroy
    respond_to do |format|
      format.html { redirect_to product_vendors_url, notice: 'Product vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_vendor
      @product_vendor = ProductVendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_vendor_params
      params.require(:product_vendor).permit(:product_id, :vendor_id, :price)
    end
end
