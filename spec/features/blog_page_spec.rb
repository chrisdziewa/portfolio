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
end