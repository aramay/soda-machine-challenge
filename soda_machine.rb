# require 'pry-byebug'
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
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
        @sodas.delete_at(index)
      end
        # puts "Before pop!!!!!!!!!!!!!!!!!!!"
        # # p "#{@sodas.pop(index)}"
        # binding.pry
        # p @sodas.delete_at(index)
        # p "#{soda.brand}"
        # puts "After pop"
        # p "$" * 50
        # p @sodas
    end
    # binding.pry
    # puts @sodas

    return nil
  end

end
