require 'spec_helper'

describe 'Serving' do
  context 'one shot of espresso' do
    let(:espresso) { EspressoShot.new }

    it 'costs 1.35' do
      espresso.cost.should == 1.35
    end
  end

  context 'two shots of espresso' do
    let(:doppio) { EspressoShot.new(EspressoShot.new) }
    it 'costs 2.70' do
      doppio.cost.should == 2.70
    end

    it 'has the ingredients' do
      doppio.get_ingredients.should == 'one espresso shot and one espresso shot'
    end
  end

  context 'a latte' do
    #let(:latte) { EspressoShot.new(WarmMilk.new) }

    it 'has ingredients' do
      pending 'one espresso shot and warm milk'
    end
  end
end
