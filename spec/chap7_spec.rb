require 'spec_helper'

RSpec.describe 'ruby_novie command', type: :aruba do
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
