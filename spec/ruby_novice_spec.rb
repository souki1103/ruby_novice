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

  context 'print hello', type: :hello do
    before(:each) { run('ruby_novice hello') }
    expected = "Hello."
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

end
