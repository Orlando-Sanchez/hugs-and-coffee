class SetProfilesFieldsNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :profiles, :fullname, false
    change_column_null :profiles, :occupation, false
    change_column_null :profiles, :biography, false
    change_column_null :profiles, :coffee_price, false
    change_column_null :profiles, :currency_sign, false
  end
end
