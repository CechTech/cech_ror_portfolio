class Portfolio < ApplicationRecord
  # Validates table records
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Creates function with query for use elsewhere
  def self.angular
    where(subtitle: 'Angular')
  end

  # Another method .uby_on_rails_portfolio_items available  query
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  # ||= shortcut for if, if nil adds default, if full skips
  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x150"
  end
end
