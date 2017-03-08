#include "<%= @underscored_name %>.h"

VALUE <%= @underscored_name %>;

void Init_<%= @name %>() {
  <%= @underscored_name %> = rb_define_module("<%= @underscored_name %>");
}
