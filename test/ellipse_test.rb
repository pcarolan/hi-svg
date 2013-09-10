require 'test_helper'

class EllipseTest < ActiveSupport::TestCase

  def setup
    @params = {:id => "e2", :cx => 400, :cy => 300,:rx => 400, :ry => 300, :fill => "blue", :stroke => "red"}
    @ellipse = Ellipse.new(@params)
    @default_ellipse = Ellipse.new
  end

  test "is properly opened" do
    assert @ellipse.draw.first(8), "<ellipse "
    assert @default_ellipse.draw.first(8), "<ellipse "
  end

  test "is properly closed" do
    assert @ellipse.draw.last(2), "/>"
    assert @default_ellipse.draw.last(2), "/>"
  end

  test "has the right id" do 
    assert_includes @ellipse.draw, " id=\"e2\" "
    assert_includes @default_ellipse.draw, " id=\"ellipse-id\" "
  end

  test "has an accurate xradius" do
    assert_includes @ellipse.draw, " rx=\"400\" "
    assert_includes @default_ellipse.draw, " rx=\"20\" "
  end

  test "has an accurate yradius" do
    assert_includes @ellipse.draw, " ry=\"300\" "
    assert_includes @default_ellipse.draw, " ry=\"10\" "
  end

  test "is located at the right coordinates" do
    assert_includes @ellipse.draw, " cx=\"400\" cy=\"300\" "
    assert_includes @default_ellipse.draw, " cx=\"30\" cy=\"20\" "
  end

end