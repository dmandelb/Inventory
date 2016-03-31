class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name, default: "*"
      t.integer :category_id, null: false

      t.timestamps null: false
    end
  end
end
