# frozen_string_literal: true

class ParksController < ApplicationController
  def index
    # @parks = Park.includes(:trees).all
    @parks = Park.all
  end

  def show; end
end
