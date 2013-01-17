class AddCodigoToOrcamento < ActiveRecord::Migration
  def change
    add_column :orcamentos, :codigo, :string
  end
end
