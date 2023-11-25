Rails.application.routes.draw do
  
  get("/square/new", {:controller => "square", :action => "newsquare"})
  get("/square/results", {:controller => "squareresults", :action => "squarelogic"})

  get("square_root/new", {:controller => "squareroot", :action => "newsquareroot"})
  get("square_root/results", {:controller=> "squarerootresults", :action => "squarerootlogic"})

  get("payment/new", {:controller => "payment", :action => "newpayment"})
  get("payment/results", {:controller => "paymentresults", :action => "paymentlogic"})

  get("random/new", {:controller => "random", :action => "newrandom"})
  get("random/results", {:controller => "randomresults", :action => "randomlogic"})
end
