require 'test_helper'

class RectTest < ActiveSupport::TestCase

  def setup
    @args = {:id => "r2", :x => 20, :y => 20, :width => 200, :height => 100, :rx => 40,:ry => 20, :fill => "green"}
    @rect = Rect.new(@args)
    @default_rect = Rect.new
  end

  test "is properly opened" do
    assert @rect.draw.first(8), "<rect "
    assert @default_rect.draw.first(8), "<rect "
  end

  test "is properly closed" do
    assert @rect.draw.last(2), "/>"
    assert @default_rect.draw.last(2), "/>"
  end

  test "has the right id" do 
    assert_includes @rect.draw, " id=\"r2\" "
    assert_includes @default_rect.draw, " id=\"rect-id\" "
  end

  test "has the right width" do 
    assert_includes @rect.draw, " width=\"200\" "
    assert_includes @default_rect.draw, " width=\"10\" "
  end

  test "has the right height" do 
    assert_includes @rect.draw, " height=\"100\" "
    assert_includes @default_rect.draw, " height=\"10\" "
  end

  test "has the right edge smoothing" do
    assert_includes @rect.draw, " rx=\"40\" ry=\"20\" "
    assert_includes @default_rect.draw, " rx=\"0\" ry=\"0\" "
  end

  test "has an accurate ycoord" do
    assert_includes @rect.draw, " y=\"20\" "
    assert_includes @default_rect.draw, " y=\"10\" "
  end

  test "is located at the right coordinates" do
    assert_includes @rect.draw, " rx=\"40\" ry=\"20\" "
    assert_includes @default_rect.draw, " rx=\"0\" ry=\"0\" "
  end

end