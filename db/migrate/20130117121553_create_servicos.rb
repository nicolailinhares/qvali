class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.references :cliente
      t.references :orcamento
      t.integer :forma_pagamento
      t.date :data_inicio
      t.date :data_fim
      t.date :entrega_relatorio
      t.boolean :relatorio_entregue

      t.timestamps
    end
    add_index :servicos, :cliente_id
  end
end
