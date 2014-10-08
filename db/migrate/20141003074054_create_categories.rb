class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :name
    	# t.boolean :female
    end
  end
end
