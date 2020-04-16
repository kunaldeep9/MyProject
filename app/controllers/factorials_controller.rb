class FactorialsController < ApplicationController
	before_action :set_default_response_format


  def terminating_zeros
  	num = params[:num].to_i
  	reverse_zeros = []
	fact_sum = (1..num).inject(:*)
	fact_sum.to_s.split('').reverse.select {|x| break if (x.to_i != 0); reverse_zeros << x}
	@count = reverse_zeros.count
  end

  protected

	def set_default_response_format
	  request.format = :json
	end
end