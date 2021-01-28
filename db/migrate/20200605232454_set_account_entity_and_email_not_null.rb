class SetAccountEntityAndEmailNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :monetary_accounts, :entity, false
    change_column_null :monetary_accounts, :account_email, false
  end
end
