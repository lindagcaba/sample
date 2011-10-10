require 'spec_helper'

describe "LayoutLinks" do
    
	it "should have Home page at '/'" do
		get '/'
		response.should have_selector('title',:content =>"RoR Sample App | Home")
	end

	it "should have About page at '/about'" do 
		get '/about'
		response.should have_selector('title',:content =>"RoR Sample App | About")

	end
	
	it "should have Contact page at '/contact'" do
	       get '/contact'
       		response.should have_selector('title',:content =>"RoR Sample App | Contact")	       
	end

	it "should have Help page at '/help'" do 
		get '/help'
		response.should have_selector('title',:content =>"RoR Sample App | Help")
	end
	
	it "should have Signup page at '/signup'" do 
		get '/signup'
		response.should have_selector('title',:content =>"RoR Sample App | Sign up")
		
	end
	#links on  the layout
	it"should have the right links on the layout" do 
		visit root_path

		click_link "About"
		response.should have_selector('title',:content =>"About")
		
		click_link "Help"
		response.should have_selector('title',:content =>"Help")

		click_link "Home"
		response.should  have_selector('title',:content =>"Home")

		click_link "Sign up" 
		response.should have_selector('title',:content =>"Sign up")

		#click on the logo,should redirect to home page
		#






	end		

		
 
end
