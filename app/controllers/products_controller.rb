class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products= @q.result(distinct: true).page(params[:page]).per(9)
  end

  def show
    @product = Product.find(params[:id])
    @category = @product.category
  end
end
