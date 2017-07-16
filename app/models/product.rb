class Product < ApplicationRecord
  has_attachment :photo

  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w(tech education design), message: "%{value} is not valid category"}
end
