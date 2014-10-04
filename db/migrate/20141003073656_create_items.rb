class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name
    	t.text :image_url
    	t.integer :category_id
    	t.integer :user_id
    end
  end
end
