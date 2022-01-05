class Project < ApplicationRecord
  belongs_to :client
  validates :title, presence: true, length: { minimum: 3 }
end
