class Public::ArtsController < ApplicationController
  def new
      @art = Art.new
  end
  
  def create
      @art = Art.new(art_params)
      @art.customer_id = current_customer.id
      if @art.save
        redirect_to art_path(@art.id)
      else
        render :new
      end
  end

  def index
      @arts = Art.all
  end

  def show
      @art = Art.find(params[:id])
      @customer = current_customer
      @art_comment = ArtComment.new
  end

  def edit
      @art = Art.find(params[:id])
  end
  
  def update
      art = Art.find(params[:id])
      art.update(art_params)
      redirect_to art_path(art.id)
  end
  
  def destroy
      art = Art.find(params[:id])
      art.destroy
    #イラスト一覧ページ
      redirect_to arts_path
  end
  
  private
  
  def art_params
      params.require(:art).permit(:title, :body, :image)
  end
end
