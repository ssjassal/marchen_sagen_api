class Story < ApplicationRecord
   has_many :snippets
   has_many :storytellers, through: :snippets
end
