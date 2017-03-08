require "test_helper"

require "<%= @underscored_name %>"

class <%= @constant_name %>Test < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::<%= @underscored_name.capitalize %>::VERSION
  end
end