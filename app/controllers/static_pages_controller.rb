class StaticPagesController < ApplicationController
  def about
    @about_us_blocks = AboutUsBlock.all
    @command_items = CommandItem.all
  end
  
  def blog
    @blog_articles = BlogArticle.paginate(page: params[:page], per_page: 10)
  end
  
  def contact
    @contact_message = ContactMessage.new
  end

  def home
    @home_page_blocks = HomePageBlock.all
    @carousel_images = CarouselImage.all
  end

  def watch_blog
    @blog_article = BlogArticle.find(params[:id])
  end


end
