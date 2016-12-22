class ChangeIntegerLimitInCadastros < ActiveRecord::Migration
  def change
  	change_column :cadastros, :telefone, :integer, limit: 15
  end
end
