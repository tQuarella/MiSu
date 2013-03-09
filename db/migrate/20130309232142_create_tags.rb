class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :clothing_item

      t.timestamps
    end
    add_index :tags, :clothing_item_id
  end
end
