class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.chomp('items').to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    @products.inject(0) {|result, product| result + product.quantity }
  end

  def is_full?
    @products.inject(0) {|result, product| result + product.quantity } > @capacity
  end

  def products_by_category(category)
    product_category = []

    @products.find_all do
      if product.category == category
        product_category << product.category
      end
    end
    product_category
  end

  def details
    self.attributes

  end

end
