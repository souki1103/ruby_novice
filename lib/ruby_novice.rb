require "ruby_novice/version"
require 'thor'
require "code"

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

    desc 'helloruby', 'print helloruby'
    def helloruby
      my_helloruby
    end

    desc 'puts_and_p', 'print puts_and_p'
    def puts_and_p
      my_puts_and_p
    end

    desc 'kiritsubo', 'print kiritsubo'
    def kiritsubo
      my_kiritsubo
    end
   
    desc 'area_volume', 'print area_volume'
    def area_volume
      my_area_volume
    end

    desc 'comment_sample', 'print comment_sample'
    def comment_sample
      my_comment_sample
    end

    desc 'greater_smaller', 'print greater_smaller'
    def greater_smaller
      my_greater_smaller
    end

    desc 'greater_smaller_else', 'print greater_smaller_else'
    def greater_smaller_else
      my_greater_smaller_else
    end

    desc 'print_argv ARG1 ARG2 ARG3 ARG4 ARG5', 'print print_argv ARG1 ARG2 ARG3 ARG4 ARG5'
    def print_argv(argv1, argv2, argv3, argv4, argv5)
      argv = [argv1, argv2, argv3, argv4, argv5]
      my_print_argv(argv)
    end

    desc 'happy_birth ARG1', 'print happy_birth ARG1'
    def happy_birth(argv1)
      argv = [argv1]
      my_happy_birth(argv)
    end

    desc 'arg_arith ARG1 ARG2', 'print arg_arith ARG1 ARG2'
    def arg_arith(argv1, argv2)
      argv = [argv1, argv2]
      my_arg_arith(argv)
    end

    desc 'read_text ARG1', 'print read_text ARG1'
    def read_text(argv1)
      Dir::chdir("../")
      argv1 = "#{Dir::pwd}/#{argv1}"
      argv = [argv1]
      my_read_text(argv)
    end

    desc 'read_text_simple ARG1', 'print read_text_simple ARG1'
    def read_text_simple(argv1)
      Dir::chdir("../")
      argv1 = "#{Dir::pwd}/#{argv1}"
      argv = [argv1]
      my_read_text_simple(argv)
    end

    desc 'read_text_oneline ARG1', 'print read_text_oneline ARG1'
    def read_text_oneline(argv1)
      Dir::chdir("../")
      argv1 = "#{Dir::pwd}/#{argv1}"
      argv = [argv1]
      my_read_text_oneline(argv)
    end

    desc 'read_line ARG1', 'print read_line ARG1'
    def read_line(argv1)
      Dir::chdir("../")
      argv1 = "#{Dir::pwd}/#{argv1}"
      argv = [argv1]
      my_read_line(argv)
    end

    desc 'simple_grep ARG1 ARG2', 'print simple_grep ARG1 ARG2'
    def simple_grep(argv1,argv2)
      Dir::chdir("../")
      argv2 = "#{Dir::pwd}/#{argv2}"
      argv = [argv1,argv2]
      my_simple_grep(argv)
    end

    desc 'hello_ruby2', 'print hello_ruby2'
    def hello_ruby2
      my_hello_ruby2
    end

    desc 'use_grep ARG1 ARG2', 'print use_grep ARG1 ARG2'
    def use_grep(argv1,argv2)
      Dir::chdir("../")
      argv2 = "#{Dir::pwd}/#{argv2}"
      argv = [argv1,argv2]
      my_use_grep(argv)
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

