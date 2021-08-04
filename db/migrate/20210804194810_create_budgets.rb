class CreateBudgets < ActiveRecord::Migration[6.1]
  def change
    create_table :budgets do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :valor

      t.timestamps
    end
  end
end
