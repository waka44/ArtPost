class Public::ArtCommentsController < ApplicationController
    
    def create
        art = Art.find(params[:art_id])
        comment = current_customer.art_comments.new(art_comment_params)
        comment.art_id = art.id
        comment.save
        redirect_to art_path(art)
    end
    
    def destroy
        ArtComment.find(params[:id]).destroy
        redirect_to art_path(params[:art_id])
    end
    
    private
    
    def art_comment_params
        params.require(:art_comment).permit(:comment)
    end
    
end
