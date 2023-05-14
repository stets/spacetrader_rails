class MarketController < ApplicationController
  before_action :init_spacetraders_api
  
  def show
    @resp = @api.get_my_ships
  end

  def init_spacetraders_api
    @api = Spacetraders.new

  end

end