class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @technologies = Technology.all
  end

  def about
  end

  def contact
  end
end
