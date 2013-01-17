class AddOrcamentoIdToItem < ActiveRecord::Migration
  def change
  	change_table :items do |t|
  		t.rename :equipamento_id, :orcamento_id
  	end
  end
end
