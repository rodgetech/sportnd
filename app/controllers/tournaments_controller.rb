class TournamentsController < ApplicationController
	layout "secondary", except: :show

	def index
		@tournaments = Tournament.all.page;
		@endpoint = pagination_tournaments_path
		@page_amount = @tournaments.total_pages
	end

	def show
		@tournament = Tournament.find(params[:id])
	end

	def pagination
	    tournaments = Tournament.all.page(params[:page]);
	    render partial: 'tournaments/item', layout: false, collection: tournaments
	end

end