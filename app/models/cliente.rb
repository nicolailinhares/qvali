class Cliente < ActiveRecord::Base
  attr_accessible :cidade, :contato, :email, :estado, :nome, :telefone
  has_many :orcamentos
end
