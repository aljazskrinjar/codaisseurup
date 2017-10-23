class Event < ApplicationRecord
  has_many :photos, dependent: :destroy
  belongs_to :user, optional: true
  has_and_belongs_to_many :categories

  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user

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
