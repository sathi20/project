class AddColumns < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :full_name, :string
    add_column :users, :contact, :integer
    add_column :users, :user_type, :integer

  end

  def down
  end
end
