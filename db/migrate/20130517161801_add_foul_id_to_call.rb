class AddFoulIdToCall < ActiveRecord::Migration
  def change
    add_column :calls, :foul_id, :integer
  end
end
