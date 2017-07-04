module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Ruby on Rails Portfolio | Jiří Čech"
    @seo_keywords = "Jiří Čech portfolio"
  end
end
