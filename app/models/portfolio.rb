class Portfolio < ApplicationRecord
  # Validates table records
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Creates function with query for use elsewhere
  def self.angular
    where(subtitle: 'Angular')
  end

  # Another method .uby_on_rails_portfolio_items available  query
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
