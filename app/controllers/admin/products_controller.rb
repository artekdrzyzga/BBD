class Admin::ProductsController < Admin::BaseController
  def index
     
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true).page(params[:page]).per(20)


    #@q = Product.ransack(params[:q])
    #@products = @q.result(distinct: true).page(params[:page]).per(10)

    #@orders= @q.result(distinct: true).order("id DESC").page(params[:page]).per(20)
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path, notice: "Pomyślnie dodano produkt."
    else
      render action: :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to admin_products_path
    else
      render action: :edit
    end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end

  def suprise
    redirect_to root_path
  end
  

  private

  def product_params
    params.require(:product).permit(
      :name,
      :category_id,
      :subcategory_id,
      :description,
      :code,
      :price,
      :picture,
      :width,
      :height,
      :composition, 
      :quantity,
      :status
    )
  end


end
