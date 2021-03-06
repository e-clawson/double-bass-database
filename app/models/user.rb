class User < ActiveRecord::Base
    has_many :lists

   # user roles
   enum role: %i(client administrator)

   # password security 
   has_secure_password

   # validations
   validates :username, presence: true, length: {in: 4..25}
   validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
   validates :password, presence: true

end