# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  image_url   :text
#  category_id :integer
#  user_id     :integer
#

class Item < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :categories
end
