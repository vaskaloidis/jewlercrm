class ChangeHoursDefaultNil < ActiveRecord::Migration[5.2]
  def change
    change_column_default :invoice_items, :hours, nil
    change_column_default :invoice_items, :planned_hours, nil
  end
end