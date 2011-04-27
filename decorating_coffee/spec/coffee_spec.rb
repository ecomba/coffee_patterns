require 'spec_helper'

describe 'Serving' do
  context 'one shot of espresso' do
    let(:espresso) { EspressoShot.new }

    it 'costs 1.35' do
      espresso.cost.should == 1.35
    end
  end

  context 'two shots of espresso' do
    let(:dopio) { EspressoShot.new(EspressoShot.new) }
    it 'costs 2.70' do
      dopio.cost.should == 2.70
    end

    it 'has the ingredients' do
      dopio.get_ingredients.should == 'one espresso shot and one espresso shot'
    end
  end
end
