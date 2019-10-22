# frozen_string_literal: true

class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show; end
end
