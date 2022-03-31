class ProductsController < ApplicationController
  def index
    @products=Product.all
    @setting =Setting.first
    @q = Product.ransack(params[:q])
    @products= @q.result(distinct: true).page(params[:page]).per(20)
  end

  def suprise
  end

  def show
    @product = Product.find(params[:id])
    @category = @product.category
    @setting =Setting.first
  end
end
