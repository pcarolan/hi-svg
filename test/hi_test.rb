require 'test_helper'

class HiTest < ActiveSupport::TestCase

  def setup
    @a = 1
  end

  test "sayhi" do
    assert_equal 1,1
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