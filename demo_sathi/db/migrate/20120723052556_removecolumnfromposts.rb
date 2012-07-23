class Removecolumnfromposts < ActiveRecord::Migration
  def up
remove_column :posts,:user_id
  end

  def down
  end
end
