class Portfolio < ApplicationRecord
  # Validates table records
  validates_presence_of :title, :body, :main_image, :thumb_image
end
