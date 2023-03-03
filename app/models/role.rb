class Role < ApplicationRecord
  has_one_attached :company_logo

  validates :position, presence: true
  validates :company, presence: true
  validates :description, presence: true
  validates :start_time, presence: true
end
