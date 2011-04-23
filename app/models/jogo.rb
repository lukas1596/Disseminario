class Jogo < ActiveRecord::Base
	# Um jogo possui várias participações.
	has_many :participacoes
	
	# Um jogo possui também vários grupos que jogaram, passando pela tabela de participacoes
	has_many :grupos, :through => :participacoes
end
