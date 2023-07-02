Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "random_fortune"

  get "/lotto", controller: "my_examples", action: "lotto_nums"
end
