$LOAD_PATH.unshift File.expand_path("../../lib/#{ENV['RUBYNOVICE_NAME']}", __FILE__)
begin
  require "code"
rescue LoadError
  p "Load Error of ex_files in rubynovice.rb."
  p File.expand_path("../../lib/#{ENV['RUBYNOVICE_NAME']}", __FILE__)
  exit
end

require "ruby_novice/version"
require 'thor'
#require "code"

module RubyNovice
  # Your code goes here...

  class CLI < Thor
#    class_option :help, type: :boolean, aliases: '-h', desc: 'help.'
#    class_option :debug, type: :boolean, aliases: '-d', desc: 'debug mode'

=begin
    desc 'hello', 'print hello'
    def hello
      my_hello
    end
=end

    desc 'my_helloruby', 'print helloruby'
    def my_helloruby
      helloruby
    end

    desc 'my_puts_and_p', 'print puts_and_p'
    def my_puts_and_p
      puts_and_p
    end

    desc 'my_kiritsubo', 'print kiritsubo'
    def my_kiritsubo
      kiritsubo
    end

    desc 'my_area_volume', 'print area_volume'
    def my_area_volume
      area_volume
    end

    desc 'my_comment_sample', 'print comment_sample'
    def my_comment_sample
      comment_sample
    end

    desc 'my_greater_smaller', 'print greater_smaller'
    def my_greater_smaller
      greater_smaller
    end

    desc 'my_greater_smaller_else', 'print greater_smaller_else'
    def my_greater_smaller_else
      greater_smaller_else
    end

    desc 'my_print_argv ARG1 ARG2 ARG3 ARG4 ARG5', 'print print_argv ARG1 ARG2 ARG3 ARG4 ARG5'
    def my_print_argv(argv1, argv2, argv3, argv4, argv5)
      ARGV[0] = argv1
      ARGV[1] = argv2
      ARGV[2] = argv3
      ARGV[3] = argv4
      ARGV[4] = argv5
      print_argv
    end

    desc 'my_happy_birth ARG1', 'print happy_birth ARG1'
    def my_happy_birth(argv1)
      ARGV[0] = argv1
      happy_birth
    end

    desc 'my_arg_arith ARG1 ARG2', 'print arg_arith ARG1 ARG2'
    def my_arg_arith(argv1, argv2)
      ARGV[0] = argv1
      ARGV[1] = argv2
      arg_arith
    end

    desc 'my_read_text ARG1', 'print read_text ARG1'
    def my_read_text(argv1)
      Dir::chdir("../..")
      argv1 = "#{Dir::pwd}/lib/#{ENV['RUBYNOVICE_NAME']}/#{argv1}"
      ARGV[0] = argv1
      read_text
    end

    desc 'my_read_text_simple ARG1', 'print read_text_simple ARG1'
    def my_read_text_simple(argv1)
      Dir::chdir("../..")
      argv1 = "#{Dir::pwd}/lib/#{ENV['RUBYNOVICE_NAME']}/#{argv1}"
      ARGV[0] = argv1
      read_text_simple
    end

    desc 'my_read_text_oneline ARG1', 'print read_text_oneline ARG1'
    def my_read_text_oneline(argv1)
      Dir::chdir("../..")
      argv1 = "#{Dir::pwd}/lib/#{ENV['RUBYNOVICE_NAME']}/#{argv1}"
      ARGV[0] = argv1
      read_text_oneline
    end

    desc 'my_read_line ARG1', 'print read_line ARG1'
    def my_read_line(argv1)
      Dir::chdir("../..")
      argv1 = "#{Dir::pwd}/lib/#{ENV['RUBYNOVICE_NAME']}/#{argv1}"
      ARGV[0] = argv1
      read_line
    end

    desc 'my_simple_grep ARG1 ARG2', 'print simple_grep ARG1 ARG2'
    def my_simple_grep(argv1,argv2)
      Dir::chdir("../..")
      argv2 = "#{Dir::pwd}/lib/#{ENV['RUBYNOVICE_NAME']}/#{argv2}"
      ARGV[0] = argv1
      ARGV[1] = argv2
      simple_grep
    end

    desc 'my_hello_ruby2', 'print hello_ruby2'
    def my_hello_ruby2
      hello_ruby2
    end

    desc 'my_use_grep ARG1 ARG2', 'print use_grep ARG1 ARG2'
    def my_use_grep(argv1,argv2)
      Dir::chdir("../..")
      argv2 = "#{Dir::pwd}/lib/#{ENV['RUBYNOVICE_NAME']}/#{argv2}"
      ARGV[0] = argv1
      ARGV[1] = argv2
      use_grep
    end

    desc 'my_scopetest', 'print scopetest'
    def my_scopetest
      scopetest
    end

    desc 'my_ad2heisei ARG1', 'print ad2heisei ARG1'
    def my_ad2heisei(argv1)
      ARGV[0] = argv1      
      ad2heisei
    end

    desc 'my_if_elsif', 'print if_elsif'
    def my_if_elsif
      if_elsif
    end

    desc 'my_unless1', 'print unless1'
    def my_unless1
      unless1
    end

    desc 'my_case1', 'print case1'
    def my_case1
      case1
    end

    desc 'case_class', 'print case_class'
    def my_case_class
      case_class
    end

    desc 'times', 'print times'
    def my_times
      times
    end

    desc 'times2', 'print times2'
    def my_times2
      times2
    end

    desc 'times3', 'print times3'
    def my_times3
      times3
    end

    desc 'for1', 'print for1'
    def my_for1
      for1
    end

    desc 'for_names', 'print for_names'
    def my_for_names
      for_names
    end

    desc 'while1', 'print while1'
    def my_while1
      while1
    end

    desc 'while2', 'print while2'
    def my_while2
      while2
    end

    desc 'while3', 'print while3'
    def my_while3
      while3
    end

    desc 'until1', 'print until1'
    def my_until1
      until1
    end

    desc 'while_not', 'print while_not'
    def my_while_not
      while_not
    end

    desc 'each_names', 'print each_names'
    def my_each_names
      each_names
    end

    desc 'each', 'print each'
    def my_each
      each
    end

    desc 'break_next', 'print break_next'
    def my_break_next
      break_next
    end

    desc 'times_with_param', 'print times_with_param'
    def my_times_with_param
      times_with_param
    end

    desc 'hello_with_name', 'print hello_with_name'
    def my_hello_with_name
      hello_with_name
    end

    desc 'hello_with_default', 'print hello_with_default'
    def my_hello_with_default
      hello_with_default
    end

    desc 'myloop1', 'print myloop1'
    def my_myloop1
      myloop1
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

