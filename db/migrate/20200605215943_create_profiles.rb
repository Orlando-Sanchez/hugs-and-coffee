class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :fullname
      t.string :occupation
      t.text :biography
      t.decimal :coffee_price
      t.string :currency_sign
      t.references :user, index: true, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
