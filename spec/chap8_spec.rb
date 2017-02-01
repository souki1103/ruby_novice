require 'spec_helper'

RSpec.describe 'ruby_novie command', type: :aruba do
  context 'hello_class', type: :hello_class do
    before(:each) { run('ruby_novice my_hello_class') }
    expected = "Hello,world. I am Bob."

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end
end
