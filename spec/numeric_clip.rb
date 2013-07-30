require 'spec_helper'

describe Numeric do
  let(:num) { 10 }
  describe '#clip(lower, upper)' do
    subject { num.clip(lower, upper) }
    context 'lower < num < upper' do
      let(:lower){ num - 1}
      let(:upper){ num + 1}
      it { should == num }
    end
    context 'num < lower < upper' do
      let(:lower){ num + 1}
      let(:upper){ num + 2}
      it { should == lower }
    end
    context 'lower < upper < num' do
      let(:lower){ num - 2}
      let(:upper){ num - 1}
      it { should == upper }
    end
    context 'lower = num < upper' do
      let(:lower){ num }
      let(:upper){ num + 1}
      it { should == num }
    end
    context 'lower < num = upper' do
      let(:lower){ num - 1}
      let(:upper){ num }
      it { should == num }
    end
    context 'lower = num = upper' do
      let(:lower){ num }
      let(:upper){ num }
      it { should == num }
    end
    context 'upper < lower' do
      let(:lower){ num }
      let(:upper){ lower - 1 }
      it { expect{subject}.to raise_error ArgumentError }
    end
  end
end
