class Resposta < ActiveRecord::Base
	# Pertence a uma pergunta
	belongs_to :pergunta
end
