class MyExamplesController < ApplicationController
  def random_fortune
    fortunes = ["You're going to have a wonderful day!", "You are going to receive a bunch of money!", "You are going to fall in love!"]
    random_index = rand(fortunes.length)
    fortune = fortunes[random_index]

    render json: {
      fortune: fortune,
    }
  end

  def lotto_nums
    render json: {
      message: "I work",
    }
  end
end
