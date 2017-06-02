class Storyteller < ApplicationRecord
   has_secure_password
   has_many :snippets
   has_many :stories, through: :snippets

end
