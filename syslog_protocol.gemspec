## This is the rakegem gemspec template. Make sure you read and understand
## all of the comments. Some sections require modification, and others can
## be deleted if you don't need them. Once you understand the contents of
## this file, feel free to delete any comments that begin with two hash marks.
## You can find comprehensive Gem::Specification documentation, at
## http://docs.rubygems.org/read/chapter/20
Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'syslog_protocol'
  s.version           = '0.10.0'
  s.date              = "2009-08-01"
  # s.rubyforge_project = 'syslog_protocol'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "Syslog protocol parser and generator"
  s.description = "Syslog protocol parser and generator"

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors = ["Jake Douglas", 'Eric Lindvall']
  s.email = [ "jakecdouglas@gmail.com", 'eric@5stops.com' ]
  s.homepage = 'https://github.com/eric/syslog_protocol'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## This sections is only necessary if you have C extensions.
  # s.require_paths << 'ext'
  # s.extensions = %w[ext/extconf.rb]

  ## If your gem includes any executables, list them here.
  # s.executables = ["name"]
  # s.default_executable = 'name'

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md]

  ## List your runtime dependencies here. Runtime dependencies are those
  ## that are needed for an end user to actually USE your code.
  # s.add_dependency('DEPNAME', [">= 1.1.0", "< 2.0.0"])

  ## List your development dependencies here. Development dependencies are
  ## those that are only needed during development
  s.add_development_dependency('bacon', [ '~> 1.1.0' ])

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    Gemfile
    README.md
    Rakefile
    lib/syslog_protocol.rb
    lib/syslog_protocol/common.rb
    lib/syslog_protocol/logger.rb
    lib/syslog_protocol/packet.rb
    lib/syslog_protocol/parser.rb
    lib/syslogrfc5424packet.rb
    lib/syslogrfc5424parser.rb
    syslog_protocol.gemspec
    test/helper.rb
    test/test_logger.rb
    test/test_packet.rb
    test/test_parser.rb
    test/test_syslogrfc5424packet.rb
    test/test_syslogrfc5424parser.rb
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
