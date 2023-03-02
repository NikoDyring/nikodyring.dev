class Project < ApplicationRecord
  has_one_attached :icon
  enum status: { unpublished: 0, published: 1 }

  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :status, presence: true
end
