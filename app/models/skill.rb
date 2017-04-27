class Skill < ApplicationRecord
  # Validates table records
  validates_presence_of :title, :percent_utilized
end
