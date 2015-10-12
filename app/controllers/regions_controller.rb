class RegionsController < ApplicationController
  def index
    @regions = Region.all
    render :index
  end

end
