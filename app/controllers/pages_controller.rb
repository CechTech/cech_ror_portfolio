class PagesController < ApplicationController
  def home
    @posts = Blog.all
  end

  def twitter
    @tweets = SocialTool.twitter_search
  end
end
