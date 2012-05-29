require 'spec_helper'

describe  "index page " do
before @product.create(:)
	it 'should show offer products if it is in databae' do
		binding.pry
		@product = Product.find_by_offer(true)
		if @product==true
			
		end
	end
end
