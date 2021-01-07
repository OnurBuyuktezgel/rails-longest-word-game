class GamesController < ApplicationController
  def new
    grid_size = 10
    @letters = Array.new(grid_size) { ('A'..'Z').to_a.sample }
  end

  def score
    @guess = params[:word].downcase
    @letters = params[:letters].downcase
    if @guess.chars.all? { |letter| @guess.count(letter) <= @letters.count(letter) }
      @score = "Well done!"
    else
      @score = "Try again!"
    end
  end
end
