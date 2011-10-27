require File.expand_path(File.join(File.dirname(__FILE__), '../test_helper'))
require 'pry'

class HamlEjsTest < Test::Unit::TestCase
  templates_dir = File.join(File.dirname(__FILE__), 'templates')
  Dir[File.join(templates_dir, '*.input')].each do |input_file|
    define_method "test_#{File.basename(input_file, File.extname(input_file))}" do
      template_name = File.basename(input_file, File.extname(input_file))
      expected_result = File.read(File.join(templates_dir, "#{template_name}.output"))
      actual_result = Haml::Engine.new(File.read(input_file), haml_ejs: true).render
      assert_equal expected_result, actual_result
    end
  end

  def test_unknown_sigil
    assert_raise Haml::SyntaxError do
      Haml::Engine.new("^bwa", haml_ejs: true).render
    end
  end

end

