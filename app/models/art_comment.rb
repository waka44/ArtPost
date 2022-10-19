class ArtComment < ApplicationRecord
    
  belongs_to :customer
  belongs_to :art
    
end
