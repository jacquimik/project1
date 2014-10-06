class ItemsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		@items = Item.all
	end

	def new 
	end

	def create
		Item.create item_params
		redirect_to(items_path)
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
		#params whitelisting
		params.require(:item).permit(:name, :image)
	end
end
