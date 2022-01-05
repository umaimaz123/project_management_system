# frozen_string_literal: true

class Client < ApplicationRecord
  validates :first_name, :last_name, :email, :website, presence: true
  validates :website,
            format: { with: URI::DEFAULT_PARSER.make_regexp,
                      message: 'is invalid follow the pattern of http://example@gmail.com' }
  validates :email, uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'is invalid follow the pattern of example@gmail.com' }
  validates :phone, numericality: true, length: { maximum: 12 }

  has_one_attached :image
  belongs_to :user
  has_many :projects
end
