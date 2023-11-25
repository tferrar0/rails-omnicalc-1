class SquareController < ApplicationController
  def newsquare
    render({ :template => "forms/square_new"})

  end
end
