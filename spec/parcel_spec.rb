require('parcel')
require('rspec')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of a package') do
      test_package = Parcel.new(2, 3, 4, 1, 10, 'standard')
      expect(test_package.volume()).to (eq(24))
    end
  end

  describe('#cost_to_ship') do
    it('returns a price of $10 for a package that has a volume less than 144 square inches, a weight less than 2 pounds, a distance less than 500 miles, and standard shipping') do
      test_package = Parcel.new(2, 3, 4, 1, 10, 'standard')
      expect(test_package.cost_to_ship()).to (eq(10.00))
    end

    it('returns a price of $14.80 for a package that has a volume of 192 square inches') do
      test_package = Parcel.new(4, 4, 12, 1, 10, 'standard')
      expect(test_package.cost_to_ship()).to (eq(14.80))
    end

    it('returns a price of $15.80 for a package that has a volume of 192, and a weight of 3lbs') do
      test_package = Parcel.new(4, 4, 12, 3, 10, 'standard')
      expect(test_package.cost_to_ship()).to (eq(15.80))
    end

    it('returns a price of $16.30 for a package that has a volume of 192, and a weight of 3.5lbs') do
      test_package = Parcel.new(4, 4, 12, 3.5, 10, 'standard')
      expect(test_package.cost_to_ship()).to (eq(16.30))
    end

    it('returns a price of $21.46 for a package that has a volume of 258.64, and a weight of 2lbs') do
      test_package = Parcel.new(4.5, 4.75, 12.1, 2, 10, 'standard')
      expect(test_package.cost_to_ship()).to (eq(21.46))
    end

    it('returns a price of $21.46 for a package that has a volume of 258.64, and a weight of 2lbs, and a distance of 600 miles') do
      test_package = Parcel.new(4.5, 4.75, 12.1, 2, 600, 'standard')
      expect(test_package.cost_to_ship()).to (eq(22.46))
    end

  end
end
