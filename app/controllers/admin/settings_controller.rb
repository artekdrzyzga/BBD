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
  end
  
  private

  def setting_params
    params.require(:setting).permit(
      :email,
      :desc_menu
    )
  end







end
