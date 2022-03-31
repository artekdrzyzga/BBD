class Admin::SettingsController < Admin::BaseController
  def index
    @setting =Setting.first
  end

  def new
    @setting = Setting.new
  end

  def create
    @setting = Setting.new(setting_params)
    if @setting.save
      redirect_to admin_products_path, notice: "Pomyślnie dodano produkt."
    else
      render action: :new
    end
  end

  def edit
    @setting = Setting.find(params[:id])
  end

  def update
    @setting = Setting.find(params[:id])
    if @setting.update_attributes(setting_params)
      redirect_to admin_products_path
    else
      render action: :edit
    end
  end
  
  
  private

  def setting_params
    params.require(:setting).permit(
      :email,
      :desc_menu,
      :desc_top,
      :picture
    )
  end







end
