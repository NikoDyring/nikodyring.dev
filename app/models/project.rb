class Project < ApplicationRecord
  has_one_attached :icon
  enum status: { unpublished: 0, published: 1 }
  enum category: { software: 0, game: 1, web: 2, other: 3 }

  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :status, presence: true
  validates :category, presence: true
end
