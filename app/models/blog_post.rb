class BlogPost < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	validates :title, presence: { message: "Must include a title" }, 
						length: { minimum: 5 }

	validates :content, presence: { message: "Must include content" }, 
						length: { minimum: 10 }
end
