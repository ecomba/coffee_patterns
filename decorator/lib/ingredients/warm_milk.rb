class WarmMilk
  include CoffeeDecorator

  def cost
    @decorated_coffee.cost + 0.20
  end

  def get_ingredients
    @decorated_coffee.get_ingredients + ' and warm milk'
  end
end
