class PagesController < ApplicationController
	def about
		@title = 'About US' ; 
		@content = 'This is the about Page ' ;
	end
end
