class RemoveFoulsTypeFromFouls < ActiveRecord::Migration
  def up
    remove_column :fouls, :fouls_type
  end

  def down
    add_column :fouls, :fouls_type, :integer
  end
end
