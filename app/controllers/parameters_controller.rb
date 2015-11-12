class ParametersController < ApplicationController
  def index
    @params = params[:name]

  end

  def parameters
  end

  def guess
    @message = nil
    @paramsnum = params[:message].to_i
    if params[:commit] == "Randomize"
      @number = rand(100)
    else
      @number = Number.first[:number]
    end

    if @paramsnum == @number
      @message = "Great Job you guessed it!"
    elsif @paramsnum > @number
      @message = "Guess a little Lower"
    else
      @message = "Guess a little Higher"
    end


  end
end
