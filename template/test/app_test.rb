require "test_helper"

require "<%= @underscored_name %>"

class <%= @constant_name %>Test < Minitest::Test
  def test_fails
    flunk "No implemented tests"
  end
end