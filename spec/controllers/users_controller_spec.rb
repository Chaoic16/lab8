require 'spec_helper'

  describe UsersController do
  render_views

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end

    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Registry")
    end
  end
  
  describe "GET 'show'" do
    before(:each) do
      @user = User.create!(:name => "John Doe", :email => "jdoe@example.com")
    end
    
    it "it should be successful" do
      get :show, :id => @user.id
      response.should be_success
    end

    it "should have the right title" do
      get 'show', :id => @user.id
      response.should have_selector("title", :content => @user.name)
    end
    
    it "should show the user's microposts" do
      mic1 = Factory(:micropost, :user => @user, :content => "My first post")
      mic2 = Factory(:micropost, :user => @user, :content => "My second post")
      get :show, :id => @user
      response.should have_selector("span.content", :content => mic1.content)
      response.should have_selector("span.content", :content => mic2.content)
    end
  end
end
