class RandomresultsController < ApplicationController
  def randomlogic
    @min_number = params.fetch("user_min").to_f
    @max_number = params.fetch("user_max").to_f
    @random_result = rand(@min_number..@max_number)

    render({:template=>"results/random_results"})
  end
end
