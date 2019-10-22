# frozen_string_literal: true

class Tree < ApplicationRecord
  belongs_to :park
  paginates_per 50
end
