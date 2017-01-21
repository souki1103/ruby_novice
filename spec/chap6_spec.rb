require 'spec_helper'

RSpec.describe 'ruby_novie command', type: :aruba do
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
end
