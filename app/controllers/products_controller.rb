class ProductsController < ApplicationController
  def index
    @products=Product.all
    @setting =Setting.last
    @q = Product.ransack(params[:q])
    @products= @q.result(distinct: true).page(params[:page]).per(6)
  end

  def suprise
  end

  def show
    @product = Product.find(params[:id])
    @category = @product.category
    @setting =Setting.last
  end
end
