class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |comment|
      comment.integer :call_id
      comment.text :text_box
    end
  end
end
