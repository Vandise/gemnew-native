#include "<%= @underscored_name %>.h"

VALUE <%= @underscored_name %>;
VALUE <%= @underscored_name %>_version;

void Init_<%= @name %>() {
  <%= @underscored_name %>_version = rb_str_new("1.0", 4);
  <%= @underscored_name %> = rb_define_module("<%= @underscored_name.capitalize %>");
  rb_define_const(<%= @underscored_name %>, "VERSION", <%= @underscored_name %>_version;);
}
