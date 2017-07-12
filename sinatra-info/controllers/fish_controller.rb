# Controller has to be plural, inherits from sinatra base.
class FishesController < Sinatra::Base

	configure :development do
  	register Sinatra::Reloader
	end

	# INDEX route
	get "/fish" do
		"<h1>Homepage -- ALL DA FISH</h1>"
	end

	# NEW // creates a new element in the fish section, need to be before show route.
	get "/fish/new" do 
		"NEW FISH"
	end

	# SHOW route
	# Dynamic path in get, will return the fish with id that the user inputs.
	get "/fish/:id" do
		id = params[:id]
		"Show: #{id}"
	end

	# CREATE // creates a new section.
	post "/fish" do
		"CREATE"
	end

	# UPDATE
	put "/fish/:id" do
		"UPDATE: #{params[:id]}"
	end

	# DELETE
	delete "/fish/:id" do 
		"DELETE: #{params[:id]}"
	end

	# EDIT
	get "/fish/:id/edit" do 
		"EDIT: #{params[:id]}"
	end
end