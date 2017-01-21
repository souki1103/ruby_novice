require 'spec_helper'

RSpec.describe 'ruby_novie command', type: :aruba do
  context 'scopetest', type: :scopetest do
    before(:each) { run('ruby_novice my_scopetest') }
    expected = "1\n0"

    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output(expected) }
  end
end
