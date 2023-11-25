class PaymentresultsController < ApplicationController
  def paymentlogic
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_f * 12
    @principal = params.fetch("user_pv").to_f
    @annual_rate = @apr.fdiv(100)
    @rate = @annual_rate.fdiv(12)
    @numerator =  @rate * @principal
    @denominator = 1 - (1 + @rate)**-@years
    @payment_result = @numerator.fdiv(@denominator)

    render({:template=>"results/payment_results"})
  end
end
