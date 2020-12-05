class Order < ApplicationRecord
  
  include Statesman::Adapters::ActiveRecordQueries[
    transition_class: OrderTransition,
    initial_state: :pending
  ]
  belongs_to :shipping_type
  belongs_to :user
  has_many :line_items 
  has_many :transitions, class_name: "OrderTransition", autosave: false

 # accepts_nested_attributes_for :address
  #accepts_nested_attributes_for :user
  
  delegate :can_transition_to?, :current_state, :history, :last_transition,
           :transition_to!, :transition_to, :in_state?, to: :state_machine

    def state_machine
      @state_machine ||= OrderStateMachine.new(self, transition_class: OrderTransition,
                                                     association_name: :transitions)
    end

  def full_cost
   line_items.map {|e| e.full_price}.sum + shipping_cost
  end

  def full_cost_in_pence
    (full_cost*100).to_i.to_s
  end

  def currency
    "gbp"
  end

  def self.transition_class
    OrderTransition
  end

  def self.initial_state
    OrderStateMachine.initial_state
  end

  def self.transition_name
    :transitions
  end


  def process_payment!(source = "tok_amex")
       
    Stripe::Charge.create({
     
      amount: full_cost_in_pence,
      description: 'Rails Stripe customer',
      currency: currency,
      source: source, # obtained with Stripe.js
      metadata: {order_id: id.to_s},
    })
  end



end
