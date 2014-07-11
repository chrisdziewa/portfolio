class AddContentToComments < ActiveRecord::Migration
  def up
  	add_column :comments, :content, :text
  end

  def down
  	remove_column :comments, :content
  end
end
