class Pergunta < ActiveRecord::Base
	# Uma pergunta foi elaborada por um grupo
	belongs_to :grupo
	
	# Possui várias respostas
	has_many :resposta
end
