class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian belgian japanese french)

  has_many :reviews, dependent: :destroy


  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }

end
