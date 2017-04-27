class Portfolio < ApplicationRecord
  has_many :technologies

  # Data validation, nested attributes
  accepts_nested_attributes_for :technologies,
    reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  # Validates table records
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Creates function with query for use elsewhere
  def self.angular
    where(subtitle: 'Angular')
  end

  # Another method .uby_on_rails_portfolio_items available  query
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  # Initializes defaults after whole code
  after_initialize :set_defaults

  # Sets defaults for every portfolio item
  # ||= shortcut for if, if nil adds default, if full skips
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
