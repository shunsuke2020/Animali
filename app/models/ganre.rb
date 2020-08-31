class Ganre < ApplicationRecord
    
     has_many :blogs, dependent: :destroy
    
end
