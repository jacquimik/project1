class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name
    	t.text :image_url
    	t.integer :user_id
    	t.text :description
    	t.string :gender
    	t.string :condition
    	t.string :size
    end
  end
end
