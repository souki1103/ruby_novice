require 'spec_helper'

RSpec.describe 'ruby_novie command', type: :aruba do
  context 'version option', type: :version do
    before(:each) { run('ruby_novice v') }
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output("0.1.0") }
  end

  context 'help option', type: :help do
    expected = `bundle exec exe/ruby_novice help`
    before(:each) { run('ruby_novice help') }
    it { expect(last_command_started).to be_successfully_executed }
#    it { expect(last_command_started).to have_output(expected) }
  end

=begin
  context 'print hello', type: :hello do
    before(:each) { run('ruby_novice hello') }
    expected = "Hello."
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end
=end  

  context 'helloruby', type: :helloruby do
    before(:each) { run('ruby_novice my_helloruby') }
    expected = "Hello, Ruby."
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'puts_and_p', type: :puts_and_p do
    before(:each) { run('ruby_novice my_puts_and_p') }
    expected = "Hello,\n\tRuby.\n\"Hello,\n\tRuby.\""

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'kiritsubo', type: :kiritsubo do
    before(:each) { run('ruby_novice my_kiritsubo') }
    expected = "いづれの御時にか女御更衣あまたさぶらいたまいけるなかに\nいとやむごとなき際にはあらぬがすぐれて時めきたまふありけり"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'area_volume', type: :area_volume do
    before(:each) { run('ruby_novice my_area_volume') }
    expected = "表面積=2200\n体積=6000"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'comment_sample', type: :comment_sample do
    before(:each) { run('ruby_novice my_comment_sample') }
    expected = "表面積=2200\n体積=6000"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'greater_smaller', type: :greater_smaller do
    before(:each) { run('ruby_novice my_greater_smaller') }
    expected = "greater"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'greater_smaller_else', type: :greater_smaller_else do
    before(:each) { run('ruby_novice my_greater_smaller_else') }
    expected = "greater"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'print_argv', type: :print_argv do
    before(:each) { run('ruby_novice my_print_argv 1st 2nd 3rd 4th 5th') }
    expected = "最初の引数: 1st\n２番目の引数: 2nd\n３番目の引数: 3rd\n４番目の引数: 4th\n５番目の引数: 5th"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'happy_birth', type: :happy_birth do
    before(:each) { run('ruby_novice my_happy_birth Ruby') }
    expected = "Happy Birthday, Ruby!"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'arg_arith', type: :arg_arith do
    before(:each) { run('ruby_novice my_arg_arith 5 3') }
    expected = "5 + 3 = 8\n5 - 3 = 2\n5 * 3 = 15\n5 / 3 = 1"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'read_text', type: :read_text do
    before(:each) { run('ruby_novice my_read_text helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'read_text_simple', type: :read_text_simple do
    before(:each) { run('ruby_novice my_read_text_simple helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'read_text_oneline', type: :read_text_oneline do
    before(:each) { run('ruby_novice my_read_text_oneline helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'read_line', type: :read_line do
    before(:each) { run('ruby_novice my_read_line helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'simple_grep', type: :simple_grep do
    before(:each) { run('ruby_novice my_simple_grep H helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'hello_ruby2', type: :hello_ruby2 do
    before(:each) { run('ruby_novice my_hello_ruby2')}
    expected = "Hello, Ruby."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'use_grep', type: :use_grep do
    before(:each) { run('ruby_novice my_use_grep H helloruby2.rb') }
    expected = "Hello, Ruby.\nHELLO, RUBY."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'scopetest', type: :scopetest do
    before(:each) { run('ruby_novice my_scopetest') }
    expected = "1\n0"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'ad2heisei', type: :ad2heisei do
    before(:each) { run('ruby_novice my_ad2heisei 2016') }
    expected = "28"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'if_elsif', type: :if_elsif do
    before(:each) { run('ruby_novice my_if_elsif') }
    expected = "aはbよりも小さい"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'unless1', type: :unless1 do
    before(:each) { run('ruby_novice my_unless1') }
    expected = "aはbより大きくない"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'case1', type: :case1 do
    before(:each) { run('ruby_novice my_case1') }
    expected = "A has child.\nIMG has no child.\nPRE cannot be used."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'case_class', type: :case_class do
    before(:each) { run('ruby_novice my_case_class') }
    expected = "item is a String.\nitem is a Numeric.\nitem is something."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'times', type: :times do
    before(:each) { run('ruby_novice my_times') }
    expected = "いちめんのなのはな\nいちめんのなのはな\nいちめんのなのはな\nいちめんのなのはな\nいちめんのなのはな\nいちめんのなのはな\nいちめんのなのはな"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'times2', type: :times2 do
    before(:each) { run('ruby_novice my_times2') }
    expected = "0回目の繰り返しです。\n1回目の繰り返しです。\n2回目の繰り返しです。\n3回目の繰り返しです。\n4回目の繰り返しです。"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'times3', type: :times3 do
    before(:each) { run('ruby_novice my_times3') }
    expected = "1回目の繰り返しです。\n2回目の繰り返しです。\n3回目の繰り返しで\す。\n4回目の繰り返しです。\n5回目の繰り返しです。"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'for1', type: :for1 do
    before(:each) { run('ruby_novice my_for1') }
    expected = "15"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'for_names', type: :for_names do
    before(:each) { run('ruby_novice my_for_names') }
    expected = "awk\nPerl\nPython\nRuby"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'while1', type: :while1 do
    before(:each) { run('ruby_novice my_while1') }
    expected = "1\n2"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'while2', type: :while2 do
    before(:each) { run('ruby_novice my_while2') }
    expected = "15"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'while3', type: :while3 do
    before(:each) { run('ruby_novice my_while3') }
    expected = "55"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'until1', type: :until1 do
    before(:each) { run('ruby_novice my_until1') }
    expected = "55"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'while_not', type: :while_not do
    before(:each) { run('ruby_novice my_while_not') }
    expected = "55"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'each_names', type: :each_names do
    before(:each) { run('ruby_novice my_each_names') }
    expected = "awk\nPerl\nPython\nRuby"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'each', type: :each do
    before(:each) { run('ruby_novice my_each') }
    expected = "15"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'break_next', type: :break_next do
    before(:each) { run('ruby_novice my_break_next') }
    expected = "breakの例:\n[1, \"Perl\"]\n[2, \"Python\"]\nnextの例:\n[1, \"Perl\"]\n[2, \"Python\"]\n[4, \"Scheme\"]"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'times_with_param', type: :times_with_param do
    before(:each) { run('ruby_novice my_times_with_param') }
    expected = "0回目の繰り返しです。\n1回目の繰り返しです。\n2回目の繰り返しです。\n3回目の繰り返しです。\n4回目の繰り返しです。"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'hello_with_name', type: :hello_with_name do
    before(:each) { run('ruby_novice my_hello_with_name') }
    expected = "Hello, Ruby."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'hello_with_default', type: :hello_with_default do
    before(:each) { run('ruby_novice my_hello_with_default') }
    expected = "Hello, Ruby.\nHello, Newbie."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'myloop1', type: :myloop1 do
    before(:each) { run('ruby_novice my_myloop1') }
    expected = "num is 1\nnum is 2\nnum is 4\nnum is 8\nnum is 16"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

end
