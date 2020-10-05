class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @favorite = @book.favorites.new(book_id: book.id)
    @favorite.save
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:book_id])
    @favorite = @book.favorites.find_by(book_id: book.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
