class RenameMonedaToIssueCurrency < ActiveRecord::Migration[8.0]
  def change
    rename_column :sales, :moneda, :invoice_currency
  end
end
