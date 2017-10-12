class Event < ApplicationRecord
  has_many :photos
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :description, presence: true
  validates :name, presence: true

  def bargain?
    price<30
  end

  def self.order_by_price
    order :price
  end

  #validates :price, presence: true
  #validates :home_type, presence: true
end
