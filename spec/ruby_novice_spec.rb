require 'spec_helper'

RSpec.describe 'ruby_novie command', type: :aruba do
  context 'version option' do
    before(:each) { run('ruby_novice v') }
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output("0.1.0") }
  end

  context 'help option' do
    expected = <<EXPECTED
Commands:
  ruby_novice hello           # print hello
  ruby_novice help [COMMAND]  # Describe available commands or one specific c...
  ruby_novice version         # version

Options:
  -h, [--help], [--no-help]        # help message.
  -v, [--version], [--no-version]  # version
  -d, [--debug], [--no-debug]      # debug mode
EXPECTED

    before(:each) { run('ruby_novice help') }
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

  context 'print hello' do
    before(:each) { run('ruby_novice hello') }
    expected = "Hello."
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end

end
