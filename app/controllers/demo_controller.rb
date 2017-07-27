class DemoController < ApplicationController
  def index
  	require 'csv'
	@csv = CSV.read('quotes.csv', :headers=>true)
	respond_to do |format|

	format.html
	format.json { render json: @csv }
	format.xml { render xml: @csv }
	end
 end
end
