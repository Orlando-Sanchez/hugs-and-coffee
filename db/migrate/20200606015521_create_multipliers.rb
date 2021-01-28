class CreateMultipliers < ActiveRecord::Migration[6.0]
  def change
    create_table :multipliers do |t|
      t.integer :quantity
      t.references :profile, index: true, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
