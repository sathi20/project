class RemoveColumn < ActiveRecord::Migration
  def up
	remove_column :users, :firstname
	remove_column :users, :lastname
	remove_column :users, :fullname
	remove_column :users, :contactno
  end

  def down
  end
end
