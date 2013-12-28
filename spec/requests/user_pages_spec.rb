require 'spec_helper'

describe "UserPages" do
  
  	describe "Signup Page" do
  	before {visit signup_path}
    
    it "has signup content" do
      expect(page).to have_content('Sign Up')
    end

	it "should have title of Signup " do 
    expect(page).to have_title('Sign Up') 
    end
end
end
