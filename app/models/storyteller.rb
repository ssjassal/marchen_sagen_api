class Storyteller < ApplicationRecord
   has_secure_password
   #validates that the username is unique and there
   validates :username, presence: true
   #validates that the password is there
   validates :password, presence: true
   has_many :snippets
   has_many :stories, through: :snippets

end
