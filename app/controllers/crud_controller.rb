class CrudController < ApplicationController
	# Obtém uma lista de todos os registros cadastrados e fornece a lista em um vetor para a vizualização.
	def index
		@registros = @modelo.all
	end
	
	# Criação de um grupo no banco.
	def create
		# Cria um novo registro
		registro = @modelo.new
		
		# Atribui os valores aos atributos do grupo
		registro.update_attributes(params[:registro])
		
		# Se conseguir salvar, atualiza a lista, senao retorna um erro.
		registro.save
		
		atualiza_lista
	end

	# Exclusão de um registro no banco de dados
	def destroy
		registro = @modelo.find(params[:id])
		registro.destroy
		
		atualiza_lista
	end
	
	private
	
	# Rotina padrão para atualizar a div que contém a lista.
	def atualiza_lista
		@registros = @modelo.all
		render :update do |pagina|
			# O Nome da div que conterá a lista deve ser formado por "lista_" + o nome do modelo em plural.
			# Grupo => lista_grupos
			# Pergunta => lista_perguntas
			# Resposta => lista_respostas
			pagina.replace_html "lista_#{@modelo.name.pluralize.downcase}", :partial => 'lista'
		end
	end
end
