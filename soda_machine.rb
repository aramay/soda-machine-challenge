class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    # p sodas
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each_with_index do |soda, index|
      if soda.brand == soda_brand
        return @sodas[index]
      end

      return nil
    end

  end

  def sell(soda_brand)
    @sodas.each_with_index do |soda, index|
      if soda.brand == soda_brand
        @cash += 1
      end
        @sodas.pop(index)
    end
    return nil
  end

end
