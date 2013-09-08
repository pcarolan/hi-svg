require 'test_helper'

class HiTest < ActiveSupport::TestCase

  test "calculate the area of a circle" do
    assert_equal Hi.area(3), 28.274333882308138
  end

  test "a circle has accurate dimensions" do
    assert_includes Hi.circle(:r => 3), "<circle cx=\"1\" cy=\"1\" r=\"3\""
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