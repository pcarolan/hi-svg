require 'test_helper'

class HiTest < ActiveSupport::TestCase

  # circles

  def setup
    @circle_object = {:id => "c2", :r => 50, :w => 3, :cx => 400, :cy => 300, :fill => "blue", :stroke => "red"}
    @rect_object = {:id => "r2", :x => 20, :y => 20, :width => 200, :height => 100, :rx => 40,:ry => 20, :fill => "green"}
  end

  test "calculate the area of a circle" do
    assert_equal Hi.area(3), 28.274333882308138
  end

  test "a circle has accurate dimensions" do
    assert_includes Hi.circle(@circle_object), "<circle id=\"c2\" cx=\"400\" cy=\"300\" r=\"50\""
  end

  test "a circle with no arguments has accurate default dimensions" do
    assert_includes Hi.circle, "<circle id=\"1\" cx=\"10\" cy=\"10\" r=\"5\""
  end

  # rects

  test "a rect has accurate dimensions" do 
    assert_includes Hi.rect(@rect_object), "<rect id=\"r2\" x=\"20\" y=\"20\" width=\"200\" height=\"100\" rx=\"40\" ry=\"20\" fill=\"green\""
  end

  test "a rect with no arguments has accurate dimensions" do 
    assert_includes Hi.rect, "<rect id=\"r1\" x=\"10\" y=\"10\" width=\"10\" height=\"10\" rx=\"0\" ry=\"0\" fill=\"white\""
  end





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