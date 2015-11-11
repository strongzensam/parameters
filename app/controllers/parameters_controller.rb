class ParametersController < ApplicationController
  def index
    @params = params[:name]

  end
  def parameters
    @paramsnum = params[:num]
    @number = Number.first[:number] 

  end
end
