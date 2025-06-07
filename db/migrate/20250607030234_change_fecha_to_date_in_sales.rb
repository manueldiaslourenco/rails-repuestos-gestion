class ChangeFechaToDateInSales < ActiveRecord::Migration[8.0]
  def change
    change_column :sales, :fecha, :date
  end
end
