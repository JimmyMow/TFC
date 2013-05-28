class RemoveFoulTypeIdFromCall < ActiveRecord::Migration
  def up
    remove_column :calls, :foul_type_id
  end

  def down
    add_column :calls, :foul_type_id, :integer
  end
end
