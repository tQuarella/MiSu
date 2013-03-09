class CommentsController < ApplicationController
  
  http_basic_authenticate_with :name => "dhh", :password => "secret", :only => [:destroy]
  
  def create
    @clothing_item = ClothingItem.find(params[:clothing_item_id])
    @comment = @clothing_item.comments.create(params[:comment])
    redirect_to clothing_item_path(@clothing_item)
  end
  
  def destroy
    @clothing_item = ClothingItem.find(params[:clothing_item_id])
    @comment = @clothing_item.comments.find(params[:id])
    @comment.destroy
    redirect_to clothing_item_path(@clothing_item)
  end
end
