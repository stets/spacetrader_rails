class ShipsController < ApplicationController
  


  def show 
    headers = {
      'Authorization' => "Bearer #{ENV['spacetraders_bearer_token']}"
    }
    puts headers
    response = HTTParty.get('https://api.spacetraders.io/v2/my/ships/', headers: headers)
    @resp = JSON.parse(response.body)
    # in here, we'll make the request with our bearer token to show the ships
  end
end