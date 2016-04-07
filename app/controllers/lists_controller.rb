class ListsController < ApplicationController
  def index
    if logged_in?
      @lists = List.where(user_id: current_user.id)
    end
  end
  def show
    @list = List.find_by(id: params[:id])
    @categories = Category.includes(:subcategories, :items).find_by(list_id: params[:id])
  end
end