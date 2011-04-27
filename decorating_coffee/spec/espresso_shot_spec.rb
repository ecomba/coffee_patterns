require 'spec_helper'

describe EspressoShot do

  let(:espresso) { EspressoShot.new }

  it 'costs 1.35 USD' do
    espresso.cost.should == 1.35
  end

  it 'is made up from "One espresso shot"' do
    espresso.get_ingredients.should == 'one espresso shot'
  end
end
