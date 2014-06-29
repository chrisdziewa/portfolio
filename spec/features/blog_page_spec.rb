require 'spec_helper'

describe BlogPost do
 	describe "clicking link to blog" do 
 		before do 
 			visit root_path 
 			click_link "Blog"
 		end
 		it "should redirect to /blog" do
 			expect(page).to have_content("My Blog")
 		end
 	end

 	describe "when visiting new_blog_post" do
 		before { visit new_blog_post_path }
 		
 		it "should show form" do 
 			expect(page).to have_content("New Blog Post")
 			expect(page).to have_selector("form")
 		end
 	end
end