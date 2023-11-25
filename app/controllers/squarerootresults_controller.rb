class SquarerootresultsController < ApplicationController
  def squarerootlogic
    @sqrt_number = params.fetch("user_number").to_f
    @sqrt_result = @sqrt_number ** 0.5.to_f
  
    render({:template=>"results/squareroot_results"})
  end
end
