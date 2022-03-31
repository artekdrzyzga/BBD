require 'rails_helper'

RSpec.describe Order, type: :model do

  # should "have default currency" do
  #   order = Order.new
  #   expect(order.currency).to eq("gbp")
  # end

  it "display the full_cost_in_pence" do
    order = Order.new

    allow(order).to receive(:full_cost).and_return(98.4)

    value = order.full_cost_in_pence
    expect(value).to eq("9840")
  end

  it "calculate the full_cost of line_items" do
    # line_items.map {|e| e.full_price}.sum + shipping_cost 
    order = Order.new
    v1 = OpenStruct.new(:full_price => 10)
    v2 = OpenStruct.new(:full_price => 22)
    items = [v1, v2]

    allow(order).to receive(:line_items).and_return(items)
    allow(order).to receive(:shipping_cost).and_return(10.5)

    expect(order.full_cost).to eq(42.5)

  end


end
