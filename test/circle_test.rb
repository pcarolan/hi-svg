require 'test_helper'

class CircleTest < ActiveSupport::TestCase

  def setup
    @params = {:id => "test1", :r => 50, :cx => 400, :cy => 300, :fill => "blue", :stroke => "red"}
    @circle = Circle.new(@params)
    @default_circle = Circle.new
  end

  test "is properly opened" do
    assert @circle.draw.first(8), "<circle "
    assert @default_circle.draw.first(8), "<circle "
  end

  test "is properly closed" do
    assert @circle.draw.last(2), "/>"
    assert @default_circle.draw.last(2), "/>"
  end

  test "has the right id" do 
    assert_includes @circle.draw, " id=\"test1\" "
    assert_includes @default_circle.draw, " id=\"circle-id\" "
  end

  test "has an accurate radius" do
    assert_includes @circle.draw, " r=\"50\" "
    assert_includes @default_circle.draw, " r=\"5\" "
  end

  test "is located at the right coordinates" do
    assert_includes @circle.draw, " cx=\"400\" cy=\"300\" "
    assert_includes @default_circle.draw, " cx=\"10\" cy=\"10\" "
  end



end