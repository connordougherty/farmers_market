class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :seller
  has_one :buyer
  has_one :storefront
  has_one :profile
  has_many :line_items

  def seller?
  	role == 'seller'
  end

  def buyer?
    role == 'buyer'
  end
end