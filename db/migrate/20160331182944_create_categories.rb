class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :list_id, null: false

      t.timestamps null: false
    end
  end
end
