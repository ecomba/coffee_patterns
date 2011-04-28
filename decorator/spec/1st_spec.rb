require 'spec_helper'

shared_examples_for 'Ingredients' do |coffee|
  context 'raises an exception when' do

    it 'cost is not implemented' do
      raise NoMethodError, 'Free coffee?' unless coffee.respond_to? :cost
    end

    it 'get_ingredients is not implemented' do
      raise NoMethodError, 'Hey, your cup is empty!' unless coffee.respond_to? :get_ingredients
    end
  end

end
