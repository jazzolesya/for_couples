class PagesController < ApplicationController

	def show
		render template: "pages/#{params[:welcome]}"
    end

end
