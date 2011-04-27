class EspressoShot

  def initialize(ingredient = nil)
    @ingredients = []
    @ingredients << ingredient unless ingredient.nil?
  end

  def cost
    @ingredients.inject(1.35) {|total, ingredient| total += ingredient.cost}
  end

  def get_ingredients
    @ingredients.inject('one espresso shot') do |serving, ingredient|
      serving << " and #{ingredient.get_ingredients}"
    end
  end

end
