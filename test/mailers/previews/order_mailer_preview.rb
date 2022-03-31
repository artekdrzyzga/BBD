# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/order_confirmation
  def order_confirmation
    order = Order.all.sample
    OrderMailer.order_confirmation(order)
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/order_in_progress
  def order_in_progress
    order = Order.all.sample
    OrderMailer.order_in_progress(order)
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/order_shipped
  def order_shipped
    OrderMailer.order_shipped(order)
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/order_cancelled
  def order_cancelled
    OrderMailer.order_cancelled(order)
  end

end
