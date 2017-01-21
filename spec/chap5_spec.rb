require 'spec_helper'

RSpec.describe 'ruby_novie command', type: :aruba do
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
end
