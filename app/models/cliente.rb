class Cliente < ActiveRecord::Base
  attr_accessible :cidade, :contato, :email, :estado, :nome, :telefone
end
