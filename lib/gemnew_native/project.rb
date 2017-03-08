require 'erb'
require 'fileutils'

module Rubynew
  class Project

    def initialize(name)
      @name = name
      # ripped off from Bundler
      @underscored_name = @name.tr("-", "_")
      @constant_name = @name.gsub(/-[_-]*(?![_-]|$)/) { "::" }.gsub(/([_-]+|(::)|^)(.|$)/) { $2.to_s + $3.upcase }
    end

    def create
      template_path = File.expand_path("../../../template", __FILE__)

      # copy the template
      FileUtils.cp_r template_path, @name

      # rename the files
      FileUtils.mv File.join(@name, "ext", "app"), File.join(@name, "ext", @underscored_name)
      FileUtils.mv File.join(@name, "ext", @underscored_name, "app.c"), File.join(@name, "ext", @underscored_name, "#{@underscored_name}.c")
      FileUtils.mv File.join(@name, "ext", @underscored_name, "app.h"), File.join(@name, "ext", @underscored_name, "#{@underscored_name}.h")
      FileUtils.mv File.join(@name, "test", "app_test.rb"), File.join(@name, "test", "#{@underscored_name}_test.rb")
    
      # apply templates
      [
        File.join(@name, "ext",  @underscored_name, "#{@underscored_name}.c"),
        File.join(@name, "ext",  @underscored_name, "#{@underscored_name}.h"),
        File.join(@name, "ext",  @underscored_name, "extconf.rb"),
        File.join(@name, "test", "test_helper.rb"),
        File.join(@name, "test", "#{@underscored_name}_test.rb"),
        File.join(@name, "Rakefile"),
        File.join(@name, "README.md")
      ].each { |file| render_template_to_file file, binding }

    end

    private

    def render_template_to_file(template, context)
      t = File.read(template)
      File.open(template, "w") do |f|
        f << ERB.new(t, nil, "-").result(context)
      end
    end

  end
end