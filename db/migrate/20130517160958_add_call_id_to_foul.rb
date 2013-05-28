class AddCallIdToFoul < ActiveRecord::Migration
  def change
    add_column :fouls, :call_id, :integer
  end
end
