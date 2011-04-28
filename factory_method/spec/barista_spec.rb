require 'spec_helper'

describe Barista do

  it 'serves an espresso when asked for one' do
    Barista.espresso.should == 'one espresso'
  end
end
