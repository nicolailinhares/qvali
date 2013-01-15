class Orcamento < ActiveRecord::Base
  belongs_to :cliente
  attr_accessible :data
end
