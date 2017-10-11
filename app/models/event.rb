class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  #validates :starts_at, presence: true
  #validates :ends_at, presence: true


  #validates :price, presence: true
  #validates :home_type, presence: true
end
