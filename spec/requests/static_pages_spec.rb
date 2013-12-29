require 'spec_helper'

describe "Static Pages" do

  describe "Homepage" do
    before { visit "/static_pages/home"}

    it "should have content Singapore Review" do
      expect(page).to have_content('Singapore Review') 
    end 

    it "should not have title Singapore's Best" do 
      expect(page).to_not have_title("Singapore's Best") 
    end
end

  describe "Contact" do
    before { visit static_pages_contact_path}

    it "should have the content Contact Page" do
      expect(page).to have_content('Contact Page') 
    end
  end

  describe "About" do
    before { visit static_pages_about_path}

    it "should have the content About Page" do
      expect(page).to have_content('About Page') 
    end
  end

end



