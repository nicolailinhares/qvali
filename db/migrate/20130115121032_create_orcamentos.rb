class CreateOrcamentos < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.date :data
      t.references :cliente

      t.timestamps
    end
    add_index :orcamentos, :cliente_id
  end
end
