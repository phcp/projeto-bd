# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140120144728) do

  create_table "cliente_fisicos", force: true do |t|
    t.string   "cpf"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cliente_fisicos", ["cliente_id"], name: "index_cliente_fisicos_on_cliente_id"

  create_table "cliente_juridicos", force: true do |t|
    t.string   "cnpj"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cliente_juridicos", ["cliente_id"], name: "index_cliente_juridicos_on_cliente_id"

  create_table "clientes", force: true do |t|
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["pessoa_id"], name: "index_clientes_on_pessoa_id"

  create_table "compra_materia_primas", force: true do |t|
    t.datetime "data"
    t.integer  "status"
    t.float    "pagamento"
    t.float    "preco"
    t.integer  "quantidade"
    t.integer  "fornecedor_id"
    t.integer  "materiaprima_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compra_produtos", force: true do |t|
    t.datetime "data"
    t.integer  "status"
    t.float    "pagamento"
    t.integer  "quantidade"
    t.integer  "fornecedor_id"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enderecos", force: true do |t|
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "logradouro"
    t.string   "complemento"
    t.string   "estado"
    t.string   "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fornecedors", force: true do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "email"
    t.integer  "endereco_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "cargo"
    t.string   "cpf"
    t.string   "senha"
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcionarios", ["pessoa_id"], name: "index_funcionarios_on_pessoa_id"

  create_table "materia_primas", force: true do |t|
    t.string   "nome"
    t.string   "codigo"
    t.text     "descricao"
    t.integer  "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pessoas", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.integer  "endereco_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producaos", force: true do |t|
    t.datetime "data"
    t.integer  "quantidade"
    t.integer  "produto_id"
    t.integer  "materiaprima_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", force: true do |t|
    t.string   "nome"
    t.float    "preco"
    t.string   "codigo"
    t.text     "descricao"
    t.integer  "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicitacaos", force: true do |t|
    t.integer  "status"
    t.datetime "data"
    t.float    "desconto"
    t.float    "pagamento"
    t.integer  "cliente_id"
    t.integer  "produto_id"
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telefone_fornecedors", force: true do |t|
    t.string   "ddd"
    t.string   "telefone"
    t.integer  "fornecedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "telefone_fornecedors", ["fornecedor_id"], name: "index_telefone_fornecedors_on_fornecedor_id"

  create_table "telefone_pessoas", force: true do |t|
    t.string   "ddd"
    t.string   "telefone"
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "telefone_pessoas", ["pessoa_id"], name: "index_telefone_pessoas_on_pessoa_id"

end
