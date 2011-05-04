class Grupo < ActiveRecord::Base
	# Um grupo possui várias participações
	has_many :participacoes
	
	# Elabora várias perguntas
	has_many :perguntas, :foreign_key => :id_grupo
	
	# Um grupo possui vários jogos de que participou, passando pela tabela de participações
	has_many :jogos, :through => :participacoes
end
