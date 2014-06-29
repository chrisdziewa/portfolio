require 'spec_helper'

describe "When creating a blog post" do 
	before { visit new_blog_post_path }
	
	def create_blog_post(options={})
		options[:title] ||= "An awesome Blog Post"
		options[:content] ||= "This is some great content!"
		fill_in "Title", with: options[:title]
		fill_in "Content", with: options[:content]
		click_button "Publish"
	end

	describe "with valid content" do 
		it "should update blog_post count" do
			create_blog_post
			
			expect(BlogPost.count).to eq(1)
			
			expect(page).to have_content("An awesome Blog Post")
			expect(page).to have_content("This is some great content!")
		end
	end
	
	describe "with invalid content" do 
		it "throws error and doesn't save without a title" do
			create_blog_post(title: "")
			
			expect(BlogPost.count).to eq(0)

			expect(page).to have_content("error")
			expect(page).to have_content("Must include a title")
		end

		it "throws error and doesn't save without content" do
			create_blog_post(content: "")
			
			expect(BlogPost.count).to eq(0)

			expect(page).to have_content("error")
			expect(page).to have_content("Must include content")
		end

		it "throws an error when title length is too short" do 
			create_blog_post(title: "abc")  

			expect(BlogPost.count).to eq(0)

			expect(page).to have_content("error") 

			expect(page).to have_content("error")
			expect(page).to have_content("Title is too short")
		end

		it "throws and error when content is too short" do 
			create_blog_post(content: ("a" * 9) )

			expect(BlogPost.count).to eq(0)

			expect(page).to have_content("error") 

			expect(page).to have_content("error")
			expect(page).to have_content("Content is too short")
		end
	end	
end