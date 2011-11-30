class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end
  
  def game
    @title = "Game List"
  end
  
  def developer
    @title = "Developer Team List"
  end
  
  def publisher
    @title = "Publisher List"
  end
  
  def platform
    @title = "Platform List"
  end
  
  def feedback
    @title = "Feedback"
  end
  
  def help
    @title = "Help"
  end
end
