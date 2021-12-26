# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title, null: false, unique: true
      t.text :body
      t.float :weight_kg
      t.float :volume_liter
      t.integer :count
      t.bigint :price_ruble

      t.timestamps
    end
  end
end
