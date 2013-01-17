class Item < ActiveRecord::Base
  belongs_to :orcamento
  belongs_to :equipamento
  attr_accessible :descricao, :quantidade
end
