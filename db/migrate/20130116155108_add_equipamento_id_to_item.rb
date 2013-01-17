class AddEquipamentoIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :equipamento_id, :integer
  end
end
