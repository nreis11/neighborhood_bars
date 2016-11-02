class BarsController < ApplicationController

  before_action :set_bars, only: [:show, :edit, :update, :destroy]

  def index
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bars = @neighborhood.bars
  end
end
