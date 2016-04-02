class Product

attr_accessor :name , :price, :tax_rate
#exempt quantity becauset they're all one and I want to simplify.

class Product
def initialize(name, price)
  @name = name
  @price = price
  @tax_rate = 0.01
end

def tax
  @price * @tax_rate #this variable is going to confuse me later
  #want to be able to round this
end

def price_with_tax
  @price + tax #here we are adding the method(which implies a value because the method returns a value)
end

class ProductExempt < Product
  def initialize #do you need to initialize if you state it's predetermined value
    @tax_rate = 0.0
  end
end

class ProductImport < Product
  def initialize
    @tax_rate = 0.15
  end
end

class ProductImportExempt < Product
  def initialize
    @tax_rate = 0.05
  end
end

#cart1

book = ProductExempt.new("Moby Dick", 12.49) #this inherits all the methods from Product Class
#Methods available to this new instance of a Product are name, price, tax_rate(predefined), tax, price_with_tax

music_cd = Product.new("Spice Girls", 14.99)

chocolate_bar = ProductExempt.new("MarsBar", 0.85)

# cart2

import_box_chocolates = ProductImportExempt.new("Lindt", 10.00)
import_perfume = ProductImport.new("Leau", 47.00)


# cart3

import_perfume = ProductImport.new("Champs", 27.99)
perfume = Product.new("Calvin Klien", 18.99)
pills = ProductExempt.new("Prozac", 9.75)
import_box_chocolates = ProductImportExempt.new("Godiva", 27.99)



class ShoppingCart < Product

  attr_accessor :products   #a state of this class is the product
  #we want to be able to get and set

  def initialize
    @products = [] #setting products to an array so we can have a "stored" list/collection of products
  end

  def add(product) #we want to be able to add products to our shopping cart
  #special case here that the product we are passing in is actually an object ...
  #each product/item was actually a particular instance of the product class
    @products << product #we're going to shovel each item/product/object into the new list/collection
  end

  def print_receipt
    @products.each do |product|     #because we're referencing an product from the Product class we can call on some of its methods
      puts "1 #{product.name} : #{product.price}"
      total_tax = product.tax.inject(0) {|sum, value| sum + value}
      puts total_tax
    #here I want to reduce the total tax value of each product in the list to one value, being the sum of all tax
    #not sure if the inject method can be called on top of the price_with_tax method
    #test this later
      total_price_with_tax = product.price_with_tax.inject(0) {|sum, value| sum + value}
      puts tota_price_with_tax
    #here I want to reduce the total tax value of each product in the list to one value, being the sum of all tax
    end
  end
end
end


cart1 = cart.New
cart1.add(book)
cart1.add(music_cd)
cart1.add(chocolate_bar)
cart1.print_receipt

cart2 = cart.New
cart2.add(import_box_chocolates)
cart2.add(import_perfume)
cart2.print_receipt

cart3 = cart.New
cart3.add(import_perfume)
cart3.add(perfume)
cart3.add(pills)
cart3.add(import_box_chocolates)
cart3.print_receipt
