class StaticPagesController < ApplicationController
  def home_old
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end
  
  def blog
    @blog_articles = BlogArticle.paginate(page: params[:page], per_page: 10)
  end
  
  def contact
  end

  def home
  end



end
