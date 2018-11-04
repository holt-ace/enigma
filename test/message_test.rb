require './test/test_helper'
require './lib/message'

class MessageTest < Minitest::Test
  def test_it_exists
    message = Message.new
    assert_instance_of Message, message
  end

  def test_it_gets_message_from_message.txt
    message = Message.new
    assert_equal "hello world", message.retrieve
  end
end
