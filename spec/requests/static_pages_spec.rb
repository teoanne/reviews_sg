require 'spec_helper'

describe "StaticPages" do

  describe "Homepage" do

    it "should have the content singapore review" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/static_pages/home"
      expect(page).to have_content('Singapore Review') 
    end

  it "should have a title test" do
    visit "static_pages/home"
    expect(page).to have_title('Reviews on food, art, music and films in Singapore | Home')
  end
end

  describe "Contact" do

    it "should have the content Contact Page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/static_pages/contact"
      expect(page).to have_content('Contact Page') 
    end

it "should have a title test" do
    visit "static_pages/contact"
    expect(page).to have_title('Contact Page')
  end
  end

  describe "About" do

    it "should have the content About Page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/static_pages/about"
      expect(page).to have_content('About Page') 
    end

it "should have a title test" do
    visit "static_pages/about"
    expect(page).to have_title('About Page')
  end
  end


end
