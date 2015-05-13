Rails.application.routes.draw do

  get("/",              		{ :controller => "boothrl", :action => "home" })
  get("/new_book",      		{ :controller => "boothrl", :action => "new_book" })
  get("/create_book",   		{ :controller => "boothrl", :action => "create_book" })
  get("/edit_book/:book_id",    { :controller => "boothrl", :action => "edit_book" })
  get("/delete_book/:book_id",  { :controller => "boothrl", :action => "delete_book" })
  get("/update_book/:book_id",  { :controller => "boothrl", :action => "update_book" })

end
