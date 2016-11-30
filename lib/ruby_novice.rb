require "ruby_novice/version"
require 'thor'

module RubyNovice
  # Your code goes here...

  class CLI < Thor
    class_option :help, type: :boolean, aliases: '-h', desc: 'help message.'
    class_option :version, type: :boolean, aliases: '-v', desc: 'version'
    class_option :debug, type: :boolean, aliases: '-d', desc: 'debug mode'

    desc 'hello', 'print hello'
    def hello
      print "Hello.\n"
    end

    desc 'version', 'version'
    def version
      puts RubyNovice::VERSION
    end

    private

    def output_error_if_debug_mode(e)
      return unless options[:debug]
      STDERR.puts(e.message)
      STDERR.puts(e.backtrace)
    end
  end
end

