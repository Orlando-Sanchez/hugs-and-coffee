class CreateAppreciations < ActiveRecord::Migration[6.0]
  def change
    create_table :appreciations do |t|
      t.integer :appreciation_kind
      t.string :donor_fullname
      t.string :donor_occupation
      t.text :donor_message
      t.integer :coffees_quantity
      t.float :hug_seconds
      t.references :user, index: true, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
