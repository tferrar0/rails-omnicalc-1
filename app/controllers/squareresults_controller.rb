class SquareresultsController < ApplicationController
  def squarelogic
    @square_number = params.fetch("number").to_f
    @square_result = @square_number ** 2.to_f

    render({ :template=>"results/square_results"})
  end
end
