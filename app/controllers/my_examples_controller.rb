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
    nums = []
    index = 0
    while index < 6
      nums << rand(61)
      index += 1
    end

    render json: {
      message: nums,
    }
  end

  def num_of_visits
    render json: {
      message: "Found a way to do this but it's too advanced for me. I think the reason we can't is because we would need to access local storage in the database or something like that...",
    }
  end

  def lyrics
    bottles = 99
    song_lyrics = ""
    while bottles > 0
      song_lyrics << "#{bottles} bottles of beer on the wall. #{bottles} of beer. Take one down, pass it around"
      bottles -= 1
      song_lyrics << "#{bottles} of beer on the wall."
    end

    render json: {
      song_lyrics: song_lyrics,
    }
  end
end
