class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }

  # Better URL
  extend FriendlyId
  friendly_id :title, use: :slugged

  # Validates table records
  validates_presence_of :title, :body

  # Adds relation to topic.rb
  belongs_to :topic
end
