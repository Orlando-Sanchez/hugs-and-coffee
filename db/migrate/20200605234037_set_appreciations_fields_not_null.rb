class SetAppreciationsFieldsNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :appreciations, :appreciation_kind, false
    change_column_null :appreciations, :donor_fullname, false
    change_column_null :appreciations, :donor_occupation, false
    change_column_null :appreciations, :donor_message, false
  end
end
