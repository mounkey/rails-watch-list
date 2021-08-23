class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = Bookmark.new
  end

  def new
    @list1 = List.all
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to root_path
  end

  def bookmarks
    @list = List.find(params[:id])
    @list.bookmarks
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
