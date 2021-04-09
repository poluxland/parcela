class CreateGastos < ActiveRecord::Migration[6.1]
  def change
    create_table :gastos do |t|
      t.date :fecha
      t.string :descripcion
      t.integer :monto
      t.string :comentarios
      t.string :estado

      t.timestamps
    end
  end
end
