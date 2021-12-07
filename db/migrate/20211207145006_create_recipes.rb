class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false, unique: true
      t.text :body
      t.bigint :price

      t.timestamps
    end
  end
end
