class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :subcategory_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
