class CreateMonetaryAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :monetary_accounts do |t|
      t.string :entity
      t.string :account_email
      t.string :identification
      t.string :account_kind
      t.references :user, index: true, foreign_key: {on_delete: :cascade, on_update: :cascade}

      t.timestamps
    end
  end
end
