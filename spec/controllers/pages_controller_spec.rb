require 'spec_helper'


describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Home")
    end
  endrspec spec

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
  
  describe "GET 'game'" do
    it "returns http success" do
      get 'game'
      response.should be_success
    end

    it "should have the right title" do
      get 'game'
      response.should have_selector("title", :content => "Game List")
    end
  end
  
  describe "GET 'develpoer'" do
    it "returns http success" do
      get 'developer'
      response.should be_success
    end

    it "should have the right title" do
      get 'developer'
      response.should have_selector("title", :content => "Developer Team List")
    end
  end
  
  describe "GET 'publisher'" do
    it "returns http success" do
      get 'publisher'
      response.should be_success
    end

    it "should have the right title" do
      get 'publisher'
      response.should have_selector("title", :content => "Publisher List")
    end
  end
  
  describe "GET 'platform'" do
    it "returns http success" do
      get 'platform'
      response.should be_success
    end

    it "should have the right title" do
      get 'platform'
      response.should have_selector("title", :content => "Platform List")
    end
  end
  
  describe "GET 'feedback'" do
    it "returns http success" do
      get 'feedback'
      response.should be_success
    end

    it "should have the right title" do
      get 'feedback'
      response.should have_selector("title", :content => "Feedback")
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
