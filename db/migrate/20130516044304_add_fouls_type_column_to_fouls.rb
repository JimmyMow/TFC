class AddFoulsTypeColumnToFouls < ActiveRecord::Migration
  def change
    add_column :fouls, :fouls_type, :string
  end
end
