# == Schema Information
#
# Table name: categories_items
#
#  category_id :integer
#  item_id     :integer
#

class CategoriesItems < ActiveRecord::Base
  belongs_to :category
  belongs_to :item
end
