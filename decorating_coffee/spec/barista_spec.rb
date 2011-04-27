require 'spec_helper'

describe Barista do
  context 'serving' do
    context 'one shot of espresso' do
      let(:espresso) { EspressoShot.new }

      it 'costs 1.35' do
        Barista.new(espresso).cost.should == 1.35
      end
    end

    context 'a latte' do
      let(:latte) { WarmMilk.new(EspressoShot.new) }

      it 'has ingredients' do
        Barista.new(latte).get_ingredients.should == 'one espresso shot and warm milk'
      end
    end
  end
end
