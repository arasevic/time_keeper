class AddFieldToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :password_digest
  end
end
