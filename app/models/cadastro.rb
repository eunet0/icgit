class Cadastro < ActiveRecord::Base
	validates :nome, presence: true
	validates :rg, presence:true
	validates :cpf, presence:true
	validates :telefone, presence:true
	validates :cidade, presence: true
end
