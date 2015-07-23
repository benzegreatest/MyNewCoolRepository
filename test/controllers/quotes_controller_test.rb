require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
   test "quote show page" do
     quote = Quote.create(:author => 'Ben Chinoy', :saying => 'You only live once')
     get :show, :id => quote.id
     assert_response :success
   end

   test "quote show page, not found" do
   	get :show, :id => 'OMG'
   	assert_response :not_found
   end
   
end
