class CreateSales < ActiveRecord::Migration[8.0]
  def change
    create_table :sales do |t|
      t.date :fecha
      t.string :moneda

      t.timestamps
    end
  end
end
