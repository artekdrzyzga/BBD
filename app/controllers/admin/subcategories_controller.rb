class Admin::SubcategoriesController < Admin::BaseController
  def index
    #@subcategories = Subcategory.all
    @q = Subcategory.ransack(params[:q])
    @subcategories = @q.result(distinct: true).page(params[:page]).per(20)
  end

  def new
    @subcategory = Subcategory.new
  end

  def create
    @subcategory = Subcategory.new(subcategory_params)
    if @subcategory.save
      redirect_to admin_subcategories_path
    else
      render action: :new
    end
  end

  def edit
    @subcategory = Subcategory.find(params[:id])
  end

  def update
    @subcategory = Subcategory.find(params[:id])
    if @subcategory.update_attributes(subcategory_params)
      redirect_to admin_subcategories_path
    else
      render action: :edit
    end
  end



  private
  def subcategory_params
    params.require(:subcategory).permit(
      :name,
      :category_id,
    )
  end




end
