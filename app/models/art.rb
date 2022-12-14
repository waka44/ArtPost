class Art < ApplicationRecord
    has_one_attached :image
    belongs_to :customer
    has_many :art_comments, dependent: :destroy
    has_many :favorites,    dependent: :destroy
    
    validates :title, presence: true
    validates :body,  presence: true
    validates :image, presence: true
    
    def favorited_by?(customer)
        favorites.exists?(customer_id: customer.id)
    end
    
end
