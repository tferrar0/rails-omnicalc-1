class PaymentController < ApplicationController
  def newpayment 
    render({:template => "forms/payment_new"})
  end
end
