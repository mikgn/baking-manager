class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.references :product, foreign_key: false
      t.references :element, foreign_key: false
      t.text :body
      t.float :weight_kg
      t.float :volume_liter
      t.integer :count

      t.timestamps
    end
  end
end
