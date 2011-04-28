class Barista

  def initialize(coffee)
    @order = coffee
  end

  def cost
    @order.cost
  end

  def get_ingredients
    @order.get_ingredients
  end
end
