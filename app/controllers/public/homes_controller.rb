class Public::HomesController < ApplicationController
  def top
    @arts = Art.page(params[:page])
  end
end
