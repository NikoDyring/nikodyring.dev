class Article < ApplicationRecord
  has_one_attached :featured_image
  enum category: { uncategorized: 0, coding: 1, game_development: 2, gaming: 3, lifestyle: 4 }
  enum status: { draft: 0, published: 1 }

  validates :headline, presence: true
  validates :subtitle, presence: true
  validates :text, presence: true
  validates :category, presence: true
  validates :status, presence: true
end
