class PluralizeController < ApplicationController
  def show
    @word = "word to pluralize"
  end

  def create
    @word = params[:word].pluralize
    render :show
  end
end
