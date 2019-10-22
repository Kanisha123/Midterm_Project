# frozen_string_literal: true

class ParksController < ApplicationController
  def index
    # @parks = Park.includes(:trees).all
    @parks = Park.order(:name).page params[:page]
  end

  def show
    @park = Park.find(params[:id])
  end
end
