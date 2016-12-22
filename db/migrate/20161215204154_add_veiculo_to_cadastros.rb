class AddVeiculoToCadastros < ActiveRecord::Migration
  def change
    add_column :cadastros, :veiculo, :string
  end
end
