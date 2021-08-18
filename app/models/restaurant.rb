class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian belgian japanese french)

  has_many :reviews, :dependent => :delete_all


  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

end
