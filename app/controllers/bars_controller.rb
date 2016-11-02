class BarsController < ApplicationController

  before_action :set_bar, only: [:show, :edit, :update, :destroy]
  before_action :set_neighborhood

  def index
    @bars = @neighborhood.bars
  end

  def create
    @bar = @neighborhood.bars.new(bar_params)

    if @bar.save
      redirect_to(neighborhood_bar_path(@neighborhood, @bar))
    else
      @errors = @bar.errors.full_messages
      render "new"
    end

  end

  def show
  end

  def new
    @bar = @neighborhood.bars.new
  end

  def edit
  end

  def update
    @bar.update(bar_params)
    redirect_to neighborhood_bar_path(@neighborhood, @bar)
  end

  def destroy
    @bar.destroy
    redirect_to neighborhood_bars_path(@neighborhood)
  end

  private

  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

  def set_bar
    @bar = Bar.find(params[:id])
  end

  def bar_params
    params.require(:bar).permit(:name, :specialty_drink, :cash_only)
  end
end
