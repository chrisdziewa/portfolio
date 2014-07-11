class Users < ActiveRecord::Base
	has_many :blog_posts
end
