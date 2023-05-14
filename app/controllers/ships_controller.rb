class ShipsController < ApplicationController
  before_action :init_spacetraders_api
  
  def show
    @resp = @api.get_my_ships
  end

  def ship_details
    puts params[:ship_id]
    @resp = @api.get_ship_details(params[:ship_id])["data"]
  end

  def cargo

  end

  def init_spacetraders_api
    @api = Spacetraders.new

  end

end