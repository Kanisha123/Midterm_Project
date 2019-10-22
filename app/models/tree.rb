# frozen_string_literal: true

class Tree < ApplicationRecord
  belongs_to :park
  validates :botanical_name, :common_name, presence: true
  paginates_per 50
end
