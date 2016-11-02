class BarsController < ApplicationController

  before_action :set_bar, only: [:show, :edit, :update, :destroy]
  before_action :set_neighborhood

  def index
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bars = @neighborhood.bars
  end

  def show
  end

  def new
    @bar = @neighborhood.bars.new
  end

  private

  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

  def set_bar
    @bar = Bar.find(params[:id])
  end
end
