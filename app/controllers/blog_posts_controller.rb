class BlogPostsController < ApplicationController
	def index
		@blogs = BlogPost.all
	end

	def new 
		@post = BlogPost.new
	end

	def show
		@post = BlogPost.find(params[:id])
	end

	def create
		@post = BlogPost.new(blog_params)
		if @post.save
			flash[:success] = "Post was successfully published."
			redirect_to @post
		else
			render 'new'
		end
	end

	def destroy
		@post = BlogPost.find(params[:id])
		@post.destroy
	end

	private

	def blog_params
		params[:blog_post].permit(:title, :content)
	end
end
