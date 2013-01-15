class Item < ActiveRecord::Base
  belongs_to :equipamento
  attr_accessible :descricao, :quantidade
end
