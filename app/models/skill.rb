class Skill < ApplicationRecord
  include Placeholder
  # Validates table records
  validates_presence_of :title, :percent_utilized

  # Initializes defaults after whole code
  after_initialize :set_defaults

  # Sets defaults for every portfolio item
  # ||= shortcut for if, if nil adds default, if full skips
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
