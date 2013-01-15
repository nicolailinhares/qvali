class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :contato
      t.string :telefone
      t.string :email
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
