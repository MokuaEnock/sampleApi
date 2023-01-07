class NumbersController < ApplicationController
  def index
    render json: Number.all
  end

  def create
    num = Number.create(num_params)
    render json: num
  end

  private

  def num_params
    params.permit(:first, :second)
  end
end
