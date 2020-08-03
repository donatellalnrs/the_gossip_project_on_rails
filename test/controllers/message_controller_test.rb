require 'test_helper'

class MessageControllerTest < ActionDispatch::IntegrationTest
  test "should get gossip" do
    get message_gossip_url
    assert_response :success
  end

end
