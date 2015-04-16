class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  
  before_action :all_products, only: [:index, :create, :destroy, :update]
  respond_to :html, :js
  # GET /products
  # GET /products.json
  def index
    
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
     @product.save!
     @current_product = @product
     
   
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @product.update!(product_params)
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:caterer_name, :product_title, :description, :image_url, :cuisine, :price)
    end

    def all_products
      @products = Product.all
    end
end
