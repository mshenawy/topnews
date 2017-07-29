class PagesController < ApplicationController

	def welcome
		@title = 'Home' ; 
	end

	def about
		@title = 'About US' ; 
		@content = 'This is the about Page ' ;
	end
end
