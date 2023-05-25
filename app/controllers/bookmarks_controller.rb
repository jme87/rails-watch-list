class BookmarksController < ApplicationController

  def new
    @bookmarks = Bookmark.new
  end

  # def create
  #   @list = List.new(list_params)
  #   @list.save
  #   # No need for app/views/restaurants/create.html.erb
  #   redirect_to list_path(@list)
  # end

  # def destroy
  #   @bookmark = Bookmark.find(params[:id])
  #   @bookmark.destroy
  #   # No need for app/views/restaurants/destroy.html.erb
  #   redirect_to lists_path, status: :see_other
  # end

  # private

  # def list_params
  #   params.require(:list).permit(:name)
  # end
end
