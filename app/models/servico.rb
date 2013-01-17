class Servico < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :orcamento
  attr_accessible :data_fim, :data_inicio, :entrega_relatorio, :forma_pagamento, :relatorio_entregue
end
