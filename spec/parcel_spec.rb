require('parcel')
require('rspec')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of a package') do
      test_package = Parcel.new(2, 3, 4)
      expect(test_package.volume()).to (eq(24))
    end
  end
end
