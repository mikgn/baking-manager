class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.text :body
      t.float :weight_kg
      t.float :volume_liter
      t.integer :count
      t.references :product, index: true
      t.references :element, index: true

      t.timestamps
    end
  end
end
