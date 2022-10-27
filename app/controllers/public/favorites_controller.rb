class Public::FavoritesController < ApplicationController
    
    def create
        art = Art.find(params[:format])
        favorite = current_customer.favorites.new(art_id: art.id)
        favorite.save
        redirect_to art_path(art)
    end
    
    def destroy
        art = Art.find(params[:format])
        favorite = current_customer.favorites.find_by(art_id: art.id)
        favorite.destroy
        redirect_to art_path(art)
    end
    
end
