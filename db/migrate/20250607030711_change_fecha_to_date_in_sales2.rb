class ChangeFechaToDateInSales2 < ActiveRecord::Migration[8.0]
  def change
    rename_column :sales, :fecha, :date
  end
end
