class AddAuthorToBlogPosts < ActiveRecord::Migration
  def up
  	add_column :blog_posts, :author, :string
  end

  def down
  	remove_column :blog_posts, :author
  end
end
