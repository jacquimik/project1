# == Schema Information
#
# Table name: categories
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  item_id :integer
#

class Category < ActiveRecord::Base
	has_and_belongs_to_many :items
end
