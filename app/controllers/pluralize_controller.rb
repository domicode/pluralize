class PluralizeController < ApplicationController
  def show
    @word = ""
  end

  def create
    @word = params[:word].pluralize
    puts @word
    render :show
  end
end
