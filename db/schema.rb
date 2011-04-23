# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110423005710) do

  create_table "grupos", :force => true do |t|
    t.string "nome",               :limit => 60
    t.string "nome_participantes", :limit => 200
  end

  create_table "jogo", :force => true do |t|
    t.date    "data"
    t.integer "qtde_respostas"
  end

  create_table "participacoes", :id => false, :force => true do |t|
    t.integer "id_grupo"
    t.integer "id_jogo"
    t.integer "acertos"
  end

  create_table "perguntas", :force => true do |t|
    t.string  "descricao"
    t.integer "id_grupo"
  end

  create_table "resposta", :force => true do |t|
    t.integer "id_pergunta"
    t.string  "descricao"
    t.boolean "correta"
  end

end
