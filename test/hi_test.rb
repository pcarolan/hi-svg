require 'minitest/autorun'

class HiTest < ActiveSupport::TestCase

  # circles

  def setup
    @circle_object = {:id => "c2", :r => 50, :cx => 400, :cy => 300, :fill => "blue", :stroke => "red"}
    @rect_object = {:id => "r2", :x => 20, :y => 20, :width => 200, :height => 100, :rx => 40,:ry => 20, :fill => "green"}
    @ellipse_object = {:id => "c2", :cx => 400, :cy => 300,:rx => 400, :ry => 300, :fill => "blue", :stroke => "red"}
    @line_object = {:id => "l2", :x1 => 200, :y1 => 200,:x2 => 400, :y2 => 400, :stroke => "red"}
  end

  test "a circle has accurate dimensions" do
    assert_includes Hi.circle(@circle_object), "<circle id=\"c2\" cx=\"400\" cy=\"300\" r=\"50\""
  end

  test "a circle with no arguments has accurate default dimensions" do
    assert_includes Hi.circle, "<circle id=\"1\" cx=\"10\" cy=\"10\" r=\"5\""
  end

  # rects

  test "a rect has accurate dimensions" do 
    assert_includes Hi.rect(@rect_object), "<rect id=\"r2\" x=\"20\" y=\"20\" width=\"200\" height=\"100\" rx=\"40\" ry=\"20\""
  end

  test "a rect with no arguments has accurate dimensions" do 
    assert_includes Hi.rect, "<rect id=\"r1\" x=\"10\" y=\"10\" width=\"10\" height=\"10\" rx=\"0\" ry=\"0\""
  end

  # ellipses

  test "an ellipse has accurate dimensions" do
    assert_includes Hi.ellipse(@ellipse_object), "<ellipse id=\"c2\" cx=\"400\" cy=\"300\" rx=\"400\" ry=\"300\""
  end

  test "an ellipse with no arguments has accurate dimensions" do
    assert_includes Hi.ellipse, "<ellipse id=\"ed1\" cx=\"30\" cy=\"20\" rx=\"20\" ry=\"10\""
  end

  # lines

  test "a line has accurate dimensions" do
    assert_includes Hi.line(@line_object), "<line id=\"l2\" x1=\"200\" y1=\"200\" x2=\"400\" y2=\"400\""
  end



 # Future Specs

 # 1. specify if it's an svg section or document.
 # 2. svg groups
 # 3. svg transforms
 # 4. animations / animatable
 # 5. svg links
#  conditional processing attributes 
# core attributes 
# graphical event attributes 
# presentation attributes 
# ‘class’
# ‘style’
# ‘externalResourcesRequired’
# ‘transform’


end

# http://mattsears.com/articles/2011/12/10/minitest-quick-reference

# Assertion           ## Example ##

# assert              assert @subject.any?, "empty subjects"
# assert_block        assert_block { @subject.any? }
# assert_empty        assert_empty @list
# assert_equal        assert_equal 2, @subject.size
# assert_in_delta     assert_in_delta @subject.size, 1,1
# assert_in_epsilon   assert_in_epsilon @subject.size, 1, 1
# assert_includes     assert_includes @subject, "skinny jeans"
# assert_instance_of  assert_instance_of Array, @list
# assert_kind_of      assert_kind_of Enumerable, @list
# assert_match        assert_match @subject.first, /silly/
# assert_nil          assert_nil @list.first
# assert_operator     assert_operator @list.size, :== , 0
# assert_output       assert_output("Size: 2") { print "Size: #{@subject.size}"}
# assert_raises       assert_raises(NoMethodError) { @subject.foo }
# assert_respond_to   assert_respond_to @subject, :count
# assert_same         assert_same @subject, @subject, "It's the same object silly"
# assert_send         assert_send [@subject, :values_at, 0]
# assert_silent       assert_silent { "no stdout or stderr" }
# assert_throws       assert_throws(:error,'is empty') {throw :error if @subject.any?}