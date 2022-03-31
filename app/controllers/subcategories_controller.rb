class SubcategoriesController < ApplicationController
  def show
    @subcategory = Subcategory.find(params[:id])
    @products = @subcategory.products.page(params[:page]).per(20) 




    @setting =Setting.first
  end
end
