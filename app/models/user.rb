class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :storefront
  has_one :profile
  has_many :line_items

  def admin?
    role == 'admin'
  end

  def seller?
  	role == 'seller'
  end

  def buyer?
    role == 'buyer'
  end
end
