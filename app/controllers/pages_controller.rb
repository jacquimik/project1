class PagesController < ApplicationController
  def home
  	@items = Item.all
  end

  def index
  	@item = Item.all
  end

  # def show
  # end


end
