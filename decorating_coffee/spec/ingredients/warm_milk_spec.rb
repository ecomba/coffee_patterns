require 'spec_helper'

describe WarmMilk do
  it_behaves_like 'Ingredients', WarmMilk.new

  context 'decorates an espresso shot' do
    let(:latte) { WarmMilk.new(EspressoShot.new) }

    it 'bumps up the price' do
      latte.cost.should == 1.55
    end

    it 'tells us what we mixed together' do
      latte.get_ingredients.should == 'one espresso shot and warm milk'
    end
  end
end
