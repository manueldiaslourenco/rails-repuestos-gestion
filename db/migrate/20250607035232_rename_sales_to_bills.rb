class RenameSalesToBills < ActiveRecord::Migration[8.0]
  def change
    rename_table :sales, :bills
  end
end
