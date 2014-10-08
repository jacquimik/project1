class SearchesController < ApplicationController
  def new

  end

  def create
  	category_ids = params['searches']['category_ids']
  	categories_items = CategoriesItems.where(category_id: category_ids)
  	item_ids = categories_items.map { |ci| ci.item_id }
  	@items = Item.find item_ids

    render 'items/index'
  end
end
