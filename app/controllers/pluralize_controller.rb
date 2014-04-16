class PluralizeController < ApplicationController
  def show
    @word = "singular word"
  end

  def create
    if params[:word].empty?
      redirect_to pluralize_show_path
    else
      @word = params[:word].pluralize
      render :show
    end
  end
end
