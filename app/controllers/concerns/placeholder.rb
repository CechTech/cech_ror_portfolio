# Creates concern for placeholder url shortcut
module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end
end
