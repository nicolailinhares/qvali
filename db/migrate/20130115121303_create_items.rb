class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :quantidade
      t.text :descricao
      t.references :equipamento

      t.timestamps
    end
    add_index :items, :equipamento_id
  end
end
