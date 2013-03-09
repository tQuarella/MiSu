class CreateClothingItems < ActiveRecord::Migration
  def change
    create_table :clothing_items do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
