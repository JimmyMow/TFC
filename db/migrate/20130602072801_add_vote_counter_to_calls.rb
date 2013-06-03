class AddVoteCounterToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :vote_counter, :integer, :default => 0
  end
end
