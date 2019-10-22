# frozen_string_literal: true

class TreesController < ApplicationController
  def index
    @trees = Tree.order(:name).page params[:page]
  end

  def show
    @tree = Tree.find(params[:id])
  end
end
