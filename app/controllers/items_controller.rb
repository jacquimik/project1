class ItemsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		@items = Item.all
	end

	def new 
		@item = Item.new
	end

	def create
		item = Item.create item_params
		redirect_to(item)
	end

	def show
		@item = Item.find params[:id]
	end

	def destroy
		item = Item.find params[:id]
		item.destroy
		redirect_to(items_path)
	end

  def edit
    @item = Item.find params[:id]
  end

	def update
		item = Item.find params[:id]
		item.update item_params
		redirect_to (item_path(item.id))
	end

	private

	def item_params
		params.require(:item).permit(:name, :image_url, :description, category_ids: [])
	end
end