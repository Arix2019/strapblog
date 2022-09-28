class AddAdminToUsers < ActiveRecord::Migration[6.1]
  def change
    # na tabela users -> campo admin -> tipo boolean -> default: false
    # (este campo sempre sera falso por padrão)
    add_column :users, :admin, :boolean, default: false
  end
end
