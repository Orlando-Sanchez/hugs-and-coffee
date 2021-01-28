class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
      t.text :subtitle
      t.references :profile, index: true, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
