module CoffeeDecorator

  def self.included(decorator)
    define_method(:initialize) do |*args|
      @decorated_coffee = args[0]
    end
  end
end
require 'espresso_shot'
require 'barista'
Dir.glob(File.dirname(__FILE__) + '/ingredients/*', &method(:require))
