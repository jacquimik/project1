# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  image_url   :text
#  user_id     :integer
#  description :text
#  gender      :string(255)
#  condition   :string(255)
#  size        :string(255)
#

class Item < ActiveRecord::Base
	belongs_to :user
	# has_many :categories, through: :categories_items
	has_and_belongs_to_many :categories
end
