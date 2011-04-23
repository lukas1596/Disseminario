# Uma participação ocorre quando um grupo participa de um jogo. este modelo é a associação N para N do modelo de
# grupos para com o modelo de jogos
class Participacao < ActiveRecord::Base
	# Quem participa é um grupo
	belongs_to :grupo
	
	# Que participa de um jogo
	belongs_to :jogo
end
