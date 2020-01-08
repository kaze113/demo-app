require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @entry = @user.entries.build(title: "sdfnsdf", content: "Lorem ipsum alkdalkd lksfsld")
  end

  test "should be valid" do
    assert @entry.valid?
  end

  test "user id should be present" do
    @entry.user_id = nil
    assert_not @entry.valid?
  end

  test "title should be present " do
    @entry.title = "   "
    assert_not @entry.valid?
  end

   test "content should be present " do
    @entry.content = "   "
    assert_not @entry.valid?
  end

  test "title should be at most 100 characters" do
    @entry.title = "a" * 101
    assert_not @entry.valid?
  end

  test "order should be most recent first" do
    assert_equal Entry.first, entries(:most_recent)
  end
  
end
