class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.integer :telefone
      t.integer :rg
      t.integer :cpf
      t.string :cidade

      t.timestamps null: false
    end
  end
end
