module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Ruby on Rails Portfolio | Jiří Čech"
    @seo_keywords = "Jiří Čech czech portfolio web development back end front back-end front-end full stack full-stack prague ruby on rails ror css html sass jquery javascript coffeescript sccs sass responsive html5 video"
  end
end
