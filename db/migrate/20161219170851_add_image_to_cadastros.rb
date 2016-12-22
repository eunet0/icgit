class AddImageToCadastros < ActiveRecord::Migration
  def change
    add_column :cadastros, :image, :string
  end
end
