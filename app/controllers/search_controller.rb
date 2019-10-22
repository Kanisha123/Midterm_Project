# frozen_string_literal: true

class SearchController < ApplicationController
  def index; end

  def result
    @parks = Park.where('name LIKE ?', "%#{params[:q]}%").order(:name).page params[:page]
    @park_count = Park.where('name LIKE ?', "%#{params[:q]}%")
  end

  def treeResult
    @trees = Tree.where('botanical_name LIKE ? OR common_name LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%").order(:botanical_name).page params[:page]
    @tree_count = Tree.where('botanical_name LIKE ? OR common_name LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%")
  end
end
