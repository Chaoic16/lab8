require 'spec_helper'


describe PagesController do
  render_views

  describe "GET 'default'" do
    it "returns http success" do
      get 'default'
      response.should be_success
    end

    it "should have the right title" do
      get 'default'
      response.should have_selector("title", :content => "Default")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "About")
    end
  end
  
    describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end

    it "should have the right title" do
      get 'help'
      response.should have_selector("title", :content => "Help")
    end
  end

end
