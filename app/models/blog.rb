class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }

  # Better URL
  extend FriendlyId
  friendly_id :title, use: :slugged
end
