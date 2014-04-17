class PluralizeController < ApplicationController
  def show
    @word = "singular word"
  end

  def create
    if params[:word].empty?
      redirect_to pluralize_show_path
    elsif params[:word] == params[:word].pluralize
      @word = params[:word]
      flash.now[:info] = "Your word didn't change because either the plural is the same as singular or you already entered the plural form."
      render :show
    else
      @word = params[:word].pluralize
      render :show
    end
  end
end
