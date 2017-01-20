require 'spec_helper'

RSpec.describe 'ruby_novie command', type: :aruba do
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
end
