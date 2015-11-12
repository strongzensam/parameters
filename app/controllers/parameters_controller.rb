class ParametersController < ApplicationController
  def index
    @params = params[:name]

  end

  def parameters
  end

  def guess
    @message = nil
    @paramsnum = params[:num].to_i
    if params[:commit] == "Randomize"
      Number.first.update(number:rand(100))
    end
    @number = Number.first[:number]
    if @paramsnum == @number
      @message = "Great Job you guessed it!"
    elsif @paramsnum > @number
      @message = "Guess a little Lower"
    else
      @message = "Guess a little Higher"
    end


  end
end
