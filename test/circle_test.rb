require 'minitest/autorun'

class CircleTest < ActiveSupport::TestCase

  def setup
    @params = {:id => "c2", :r => 50, :cx => 400, :cy => 300, :fill => "blue", :stroke => "red"}
    @circle = Circle.new(@params)
  end

  test "a circle has accurate dimensions" do
    assert_includes Circle.draw, "<circle id=\"c2\" cx=\"400\" cy=\"300\" r=\"50\""
  end

  # test "a circle with no arguments has accurate default dimensions" do
  #   assert_includes Hi.circle, "<circle id=\"1\" cx=\"10\" cy=\"10\" r=\"5\""
  # end


end