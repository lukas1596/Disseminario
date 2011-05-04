class PerguntasController < CrudController
	def initialize
		@modelo = Pergunta
		super
	end
	def create
		# Cria o registro da pergunta que será criada
		pergunta = Pergunta.new
		
		# Obtem o vetor dos parametros que possui as respostas, e retira do vetor de atributos da resposta.
		# (Pois sera configurado separadamente)
		respostas = params[:registro].delete("respostas")
		
		# Obtem a resposta correta, e retira do vetor de atributos do registro
		resposta_correta = params[:registro].delete(:resposta_correta)
		
		# Passa os valores corretos para a nova pergunta
		pergunta.update_attributes(params[:registro])
		
		# Para cada resposta adiciona uma resposta nas respostas dessa pergunta.
		respostas.each do |numero, resposta|
			# Cria um registro de resposta e adiciona às respostas desta pergunta
			pergunta.respostas << Resposta.new(
				:descricao => resposta["descricao"],
				:correta => (numero.to_s == resposta_correta)
			)
		end
		
		# Salva a pergnta
		pergunta.save
		
		atualiza_lista
	end
	
	# Importação do arquivo de perguntas e respostas de um grupo.
	def importar_arquivo
		ImportarArquivo.perguntas params[:importacao][:grupo], params[:importacao][:arquivo]
	end
end
