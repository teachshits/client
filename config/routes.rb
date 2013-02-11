Client::Application.routes.draw do
  match "activities/receive" => "activities#receive", :via => :post
end
