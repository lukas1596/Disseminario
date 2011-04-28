class GruposController < ApplicationController
	# Obtém uma lista de todos os grupos cadastrados e fornece a lista em um vetor para a vizualização.
	def index
		@grupos = Grupo.all
	end
	
	# Criação de um grupo no banco.
	def create
		# Cria um novo registro
		grupo = Grupo.new
		
		# Atribui os valores aos atributos do grupo
		grupo.update_attributes(params[:grupo])
		
		# Se conseguir salvar, atualiza a lista, senao retorna um erro.
		grupo.save
		
		atualiza_lista
	end

	# Renderização da tela de edição de um grupo
	#
	# Recebe o ID do grupo, obtém o registro do grupo com esse id, e renderiza uma vizualização 
	# que mostrará os dados desse registro em um formulário para editar.
	def edit
	end

	# Atualização de um grupo no banco de dados.
	def update
	end

	# Obtenção dos dados de um registro para vizualizar os detalhes.
	def show
	end

	# Exclusão de um registro no banco de dados
	def destroy
		grupo = Grupo.find(params[:id])
		grupo.destroy
		
		atualiza_lista
	end
	
	private
	
	# Rotina padrão para atualizar a div que contém a lista.
	def atualiza_lista
		@grupos = Grupo.all
		render :update do |pagina|
			pagina.replace_html "lista_grupos", :partial => 'lista_grupos'
		end
	end
end
