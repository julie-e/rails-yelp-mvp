CATEGORIES = %w(chinese italian japanese french belgian)

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, uniqueness: true, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES, allow_nill: false, message: "Not valid" }
end
