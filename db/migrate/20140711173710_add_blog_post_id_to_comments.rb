class AddBlogPostIdToComments < ActiveRecord::Migration
  def up
  	add_column :comments, :blog_post_id, :integer
  end

  def down
  	remove_column :comments, :blog_post_id
  end
end
