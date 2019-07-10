# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  before_validation { self.category = self.category.downcase }
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: {
    in: %w[chinese italian japanese french belgian]
  }, case_sensitive: false
end
