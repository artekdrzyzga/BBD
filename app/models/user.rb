class User < ApplicationRecord
  has_many :orders
  acts_as_authentic
  after_create :new_user

    acts_as_authentic do |c|
        c.crypto_provider = ::Authlogic::CryptoProviders::SCrypt
    end
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true
    validates :zip_code, presence: true
    validates :street, presence: true
    validates :city, presence: true


    
    validates :email,
    format: {
      with: /@/,
      message: "should look like an email address"
    },
    length: { maximum: 100 },
    uniqueness: {
      case_sensitive: false,
      if: :will_save_change_to_email?
    }
  validates :password,
  confirmation: { if: :require_password? },
  length: {
    minimum: 8,
    if: :require_password?
  }
  validates :password_confirmation,
    length: {
      minimum: 8,
      if: :require_password?
  }
  
  def new_user
    UserMailer.new_user_notification(self).deliver_now
  end

  def deliver_password_reset_instructions!
    #reset_persistence_token!
    reset_perishable_token!
    PasswordResetMailer.reset_email(self).deliver_now
  end





end
