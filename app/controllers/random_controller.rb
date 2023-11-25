class RandomController < ApplicationController
  def newrandom
    render({:template =>"forms/random_new"})
  end
end
