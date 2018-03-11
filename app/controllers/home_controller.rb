class HomeController < ApplicationController
  def top
    @items = Item.all
  end
  
  def blog
    redirect_to("http://hoshimureinforcement.hatenablog.com/")
  end
  
  def news
  end
  
  def contact
  end
  
  def rule
  end
  
  def privacy
  end
  
  def question
  end
  
  def transaction_row
  end
  
  def mypage
  end

end

