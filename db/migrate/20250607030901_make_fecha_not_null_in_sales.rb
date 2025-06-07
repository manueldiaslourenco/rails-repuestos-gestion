class MakeFechaNotNullInSales < ActiveRecord::Migration[8.0]
  def change
    change_column_null :sales, :date, false
  end
end
