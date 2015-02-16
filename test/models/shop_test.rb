require "test_helper"

class ShopTest < ActiveSupport::TestCase

  def shop
    @shop ||= Shop.new
  end

  def test_valid
    assert shop.valid?
  end

end
