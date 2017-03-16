require 'minitest/autorun'
require './processor'

class ProcessorTest < Minitest::Test

  def test_return_exact_expected_output
    expected = <<~eos
      All Opportunities
      Title: Assistant to the Regional Manager, Organization: IBM, Location: Scranton, PA, Pay: 10-15
      Title: Associate Tattoo Artist, Organization: Tit 4 Tat, Location: Brooklyn, NY, Pay: 250-275
      Title: Lead Chef, Organization: Chipotle, Location: Denver, CO, Pay: 10-15
      Title: Lead Guitarist, Organization: Philharmonic, Location: Woodstock, NY, Pay: 100-200
      Title: Manager of Fun, Organization: IBM, Location: Albany, NY, Pay: 30-40
      Title: Stunt Double, Organization: Equity, Location: Los Angeles, CA, Pay: 15-25
    eos

    assert_equal expected, Processor.run
  end
end
