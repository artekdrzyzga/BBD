class CartController < ApplicationController
  def show
    @cart = current_cart
  end

  def edit
    @cart = current_cart
    #@cart.build_address if @cart.address.blank?
  end

  def update
    @cart = current_cart
    if @cart.update_attributes(cart_attributes)
      @cart.update_attribute(:shipping_cost, @cart.shipping_type.cost)

      @cart.update_attribute(:user_id, 1) 

      redirect_to confirmation_cart_path
    else
      render action: :edit
    end
  end

  def confirmation
    # generowanie danych
    @cart = current_cart
#byebug
  
    # Stripe::Charge.create({
    #   amount: 2000,
    #   currency: 'gbp',
    #   source: 'tok_amex', # obtained with Stripe.js
    #   metadata: {order_id: '6735'},
    # })

#   begin    
#     @customer = Stripe::Customer.create({
#       email: params[:stripeEmail],
#       source: params[:stripeToken],
#     })
  
#     @charge = Stripe::Charge.create({
#       customer: customer.id,
#       amount: @amount,
#       description: 'Rails Stripe customer',
#       currency: 'gbp',
#     })
  

#   rescue Stripe::CardError => e
#     flash[:error] = e.message
# #    redirect_to new_charge_path
#   end
  end



  def finish
    # yeah to zostawic!
    @cart = current_cart
    @cart.process_payment!

    @cart.update_attribute(:user_id,current_user.id)
    @cart.transition_to :confirmed
    session.delete(:order_id)
    flash[:notice] = "Dziękujemy za zamówienie!"
 
    #redirect_to new_charge_path

    redirect_to root_path
  end
  

  def add_product
    order = current_cart_or_create
    product = Product.find(params[:product_id])
    if item = order.line_items.where(product: product).first
      item.quantity += 1
      item.save
    else
      order.line_items.new(product: product, quantity: 1, unit_price: product.price, item_name: product.name)
      order.save
    end
    flash[:notice] = "Dodano do koszyka"
    redirect_back(:fallback_location => root_path)

  end




  def remove_product
    order = current_cart
    product = Product.find(params[:product_id])
    item = order.line_items.where(product: product).first
    if item
      item.destroy
    end
    redirect_to cart_path
  end


  private

  def cart_attributes
    params.require(:order).permit(
      :shipping_type_id,
      :comment,
      :address_attributes => [
        :first_name,
        :last_name,
        :city,
        :zip_code,
        :street,
        :email
      ]
    )
  end





end
