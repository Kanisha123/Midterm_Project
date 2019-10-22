# frozen_string_literal: true

class Park < ApplicationRecord
  has_many :trees
  validates :name, :address, :category, presence: true
end
