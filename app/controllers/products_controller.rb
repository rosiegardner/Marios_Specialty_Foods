class ProductsController < ApplicationController

  def index
    @products = Product.all
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new   
    end
  end

  def edit
  end

  def show
  end
  
  def update
  end

  def destroy
  end

end