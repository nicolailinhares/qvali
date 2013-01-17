class Orcamento < ActiveRecord::Base
  belongs_to :cliente
  has_many :items
  attr_accessible :data, :codigo
  validates :codigo, :uniqueness => true

  before_create do |orcamento|
  	orcamento.data = Date.today
  	if orcamento.codigo.nil? or orcamento.codigo.empty?
  		id = Orcamento.last.id + 1
  		orcamento.codigo = data.year.to_s[2,2] + ("%02d"%data.month) + ("%05d"%id)
  	end
  end
end
