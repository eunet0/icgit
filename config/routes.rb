Rails.application.routes.draw do
	resources :cadastros, only: [:destroy, :edit, :update]
	root 'cadastros#index'
 	get '/novo_cadastro' => 'cadastros#new'
 	post '/cadastros' => 'cadastros#create'
 	get '/todos_cadastros' => 'cadastros#all'
 	get '/dev' => 'devs#dev'
 	get '/busca_cadastro' => 'cadastros#busca_cadastro'
 	get '/cadastros/:id' => 'cadastros#detalhes'
end
