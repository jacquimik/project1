# == Schema Information
#
# Table name: categories
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Category < ActiveRecord::Base
	# has_many :items, through: :categories_items
	has_and_belongs_to_many :items
end
