class CriaEstruturaBanco < ActiveRecord::Migration
	def self.up
		create_table :jogos do |t|
			t.column :data, :date
			t.column :qtde_respostas, :integer
		end

		create_table :respostas do |t|
			t.column :id_pergunta, :integer
			t.column :descricao, :string
			t.column :correta, :boolean
		end

		create_table :grupos do |t|
			t.column :nome, :string, :limit => 60
			t.column :nome_participantes, :string, :limit => 200
		end

		create_table :perguntas do |t|
			t.column :descricao, :string
			t.column :id_grupo, :integer
		end

		# Esta tabela não possui a coluna chamada "id" (padrao do rails).
		# por isso passamos a opção :id => false
		create_table :participacoes, :id => false do |t|
			t.column :id_grupo, :integer
			t.column :id_jogo, :integer
			t.column :acertos, :integer
		end

	end

	def self.down
		drop_table :jogos
		drop_table :respostas
		drop_table :grupos
		drop_table :perguntas
		drop_table :participacoes
	end
end
