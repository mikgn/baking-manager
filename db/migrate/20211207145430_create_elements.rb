class CreateElements < ActiveRecord::Migration[6.0]
  def change
    create_table :elements do |t|
      t.string :title, null: false, unique: true
      t.text :description
      t.float :actual_weight
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
