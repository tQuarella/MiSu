class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :clothing_item

      t.timestamps
    end
    add_index :comments, :clothing_item_id
  end
end
