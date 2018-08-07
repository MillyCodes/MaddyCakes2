# is a product class that contains ALL useful for this project?
# class Products
#     attr_accessor :size, :color, :brand
#     def initialize(size, color, brand)
#       @size = size 
#       @color = color 
#       @brand = brand
#     end
  
#   end

class Cupcake
    attr_accessor :name, :description, :price, :url
    def initialize(name, description, price, url)
      @name = name 
      @description = description
      @price = price 
      @url = url
    end
  
  end

class Cookie
  attr_accessor :name, :description, :price, :url
  def initialize(name, description, price, url)
    @name = name 
    @description = description
    @price = price 
    @url = url
  end

end

  class Muffin
    attr_accessor :name, :description, :price, :url
    def initialize(name, description, price, url)
      @name = name 
      @description = description
      @price = price 
      @url = url
    end
  
  end
