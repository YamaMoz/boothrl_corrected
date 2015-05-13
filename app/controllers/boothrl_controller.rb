class BoothrlController < ApplicationController

	def home
		@all_books = Book.all
		render 'home'
	end

	def new_book
		render 'new_book'
	end

	def create_book
		new_book = Book.new
		new_book.book_authors = params[:book_authors]
		new_book.book_title = params[:book_title]
		new_book.book_edition = params[:book_edition]
		new_book.book_yearpublished = params[:book_yearpublished]
		new_book.book_isbn13 = params[:book_isbn13]
		new_book.book_apponlist = params[:book_apponlist]
		new_book.book_department = params[:book_department]
		new_book.book_coursetitle = params[:book_coursetitle]
		new_book.book_coursenumber = params[:book_coursenumber]
		new_book.book_professor = params[:book_professor]
		new_book.book_description = params[:book_description]
		new_book.save
		redirect_to("/")
	end

	def edit_book
		@book_edit = Book.find(params[:book_id])
		render 'edit_book'
	end

	def update_book
		book_update = Book.find(params[:book_id])
		book_update.book_authors = params[:book_authors]
		book_update.book_title = params[:book_title]
		book_update.book_edition = params[:book_edition]
		book_update.book_yearpublished = params[:book_yearpublished]
		book_update.book_isbn13 = params[:book_isbn13]
		book_update.book_apponlist = params[:book_apponlist]
		book_update.book_department = params[:book_department]
		book_update.book_coursetitle = params[:book_coursetitle]
		book_update.book_coursenumber = params[:book_coursenumber]
		book_update.book_professor = params[:book_professor]
		book_update.book_description = params[:book_description]
		book_update.save
		redirect_to("/")
	end

	def delete_book
		delete_book = Book.find(params[:book_id])
		delete_book.destroy
		redirect_to("/")
	end

end