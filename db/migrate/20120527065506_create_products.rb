class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.integer :model_no
      t.string :description
      t.string :image
      t.boolean :feature
      t.boolean :offer

      t.timestamps
    end
  end
end
