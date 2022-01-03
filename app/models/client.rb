class Client < ApplicationRecord
 validates :first_name, :last_name, :email, :website, presence: true 
 validates :website, format: { with: URI.regexp,
                                message: 'website is invalid follow the pattern of http://example@gmail.com' }
 validates :email, uniqueness: true,
                   format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                              message: 'email is invalid follow the pattern of example@gmail.com' }
 validates :phone, numericality: true,
                  length: { maximum: 12 }

 has_one_attached :image
end