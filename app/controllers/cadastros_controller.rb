class CadastrosController < ApplicationController
	def new
		@cadastro = Cadastro.new
		@veiculos = ["LS", "BiTrem", "RodoTrem", "Simples", "Vanderleia"]
	end

	def create
		valores = params.require(:cadastro).permit :nome, :rg, :cpf, :veiculo, :cidade, :telefone, :image
		@cadastro = Cadastro.new valores
		if @cadastro.save
			redirect root_url
		else
			render :new
		end
	end

	def edit
		id = params[:id]
		@cadastro = Cadastro.find id
		@veiculos = ["LS", "BiTrem", "RodoTrem", "Simples", "Vanderleia"]
		render :new 
	end	

	def update
		id = params[:id]
		@cadastro = Cadastro.find id
		@veiculos = ["LS", "BiTrem", "RodoTrem", "Simples", "Vanderleia"]
		valores = params.require(:cadastro).permit :nome, :rg, :cpf, :veiculo, :cidade, :telefone, :image
		@cadastro.update valores
		redirect root_url		
	end

	def detalhes
		id = params[:id]
		@cadastro = Cadastro.find id
	end

	def all
		@cadastros = Cadastro.all
	end

	def destroy 
		Cadastro.destroy params[:id]
		redirect root_url
	end

	def busca_cadastro
		nome = params[:nome]
		@cadastro_buscado = Cadastro.where "nome like ?","%#{nome}%"
		flash[:notice] = "Não encontrou o cadastro que procurava ? Realize um novo cadastro clicando aqui"
		
	end

	private

	def redirect(view)
		redirect_to view
	end

	def valores
		params.require(:cadastro).permit :nome, :rg, :cpf, :veiculo, :cidade, :telefone
	end
end
