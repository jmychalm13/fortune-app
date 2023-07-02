Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "random_fortune"

  get "/lotto", controller: "my_examples", action: "lotto_nums"

  get "/impossible", controller: "my_examples", action: "num_of_visits"

  get "/99bottles", controller: "my_examples", action: "lyrics"
end
