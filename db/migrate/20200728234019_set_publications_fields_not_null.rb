class SetPublicationsFieldsNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :publications, :subtitle, false
  end
end
