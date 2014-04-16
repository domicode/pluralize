class PluralizeController < ApplicationController
  def show
    @word = "singular word"
  end

  def create
    @word = params[:word].pluralize
    render :show
  end
end
