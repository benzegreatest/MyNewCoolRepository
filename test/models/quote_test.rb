require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  
  test "unique_tag" do
  	quote = Quote.create(:author => 'Ben Chinoy', :saying => 'You only live once')
  	expected = 'BC#' + quote.id.to_s
  	actual = quote.unique_tag
  	assert_equal expected, actual
  end

end
