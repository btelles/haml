require 'rubygems'

HAML_GEMSPEC = Gem::Specification.new do |spec|
  spec.rubyforge_project = 'haml_ejs'
  spec.name = 'haml_ejs'
  spec.summary = "An elegant, structured XHTML/XML templating engine."
  spec.version = File.read(File.dirname(__FILE__) + '/VERSION').strip
  spec.authors = ['Duncan Beevers', 'Nathan Weizenbaum', 'Hampton Catlin']
  spec.email = 'haml@googlegroups.com'
  spec.description = <<-END
      Haml+ejs is an extension to haml to make generating client-side templates
      as simple as server-side markup.
    END

  spec.add_development_dependency 'yard', '>= 0.5.3'
  spec.add_development_dependency 'maruku', '>= 0.5.9'
  spec.add_development_dependency 'hpricot'
  spec.add_development_dependency 'ruby_parser'

  readmes = Dir['*'].reject{ |x| x =~ /(^|[^.a-z])[a-z]+/ || x == "TODO" }
  spec.executables = ['haml', 'html2haml']
  spec.files = Dir['rails/init.rb', 'lib/**/*', 'bin/*', 'test/**/*',
    'extra/**/*', 'vendor/sass/**/*', 'Rakefile', 'init.rb', '.yardopts'] + readmes
  spec.homepage = 'http://haml-lang.com/'
  spec.has_rdoc = false
  spec.test_files = Dir['test/**/*_test.rb']
end
