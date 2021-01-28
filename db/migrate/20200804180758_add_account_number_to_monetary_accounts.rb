class AddAccountNumberToMonetaryAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :monetary_accounts, :account_number, :integer
  end
end
