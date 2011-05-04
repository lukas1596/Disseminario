class Pergunta < ActiveRecord::Base
	# Uma pergunta foi elaborada por um grupo
	belongs_to :grupo, :foreign_key => :id_grupo
	
	# Possui várias respostas
	has_many :respostas, :foreign_key => :id_pergunta
end
