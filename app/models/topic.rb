class Topic < ApplicationRecord
  # Validates table records
  validates_presence_of :title

  # Adds relation to blogs.rb
  has_many :blogs
end
