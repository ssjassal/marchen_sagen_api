class Storyteller < ApplicationRecord
   has_many :snippets
   has_many :stories, through: :snippets
end