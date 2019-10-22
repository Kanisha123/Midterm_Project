# frozen_string_literal: true

class TreesController < ApplicationController
  def index
    @trees = Tree.order(:botanical_name).page params[:page]
  end

  def show
    @tree = Tree.find(params[:id])
  end
end
