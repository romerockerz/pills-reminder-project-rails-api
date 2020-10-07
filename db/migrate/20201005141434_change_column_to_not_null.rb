class ChangeColumnToNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :medical_histories, :dependent_id, true
  end
end
