gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/producer'
require_relative '../lib/data'
class ProducerTest < Minitest::Test

  def test_producer_shortfall
    prov = Producer.new('string for producers', sample_producer_data)
    assert_raises NoMethodError do
      assert_equal(0, prov.shortfall) # Fowler said would not pass
    end
  end

end
