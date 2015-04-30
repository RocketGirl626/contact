require('rspec')
require('address')

describe(Address) do
  before() do
    Address.clear()
  end

  describe('#address_line') do
    it('returns the address line of the Address') do
      test_address = Address.new({:address_line => '846 SW Broadway Drive', :city => 'Portland', :state => 'OR', :zip => '97201'})
      expect(test_address.address_line()).to(eq('846 SW Broadway Drive'))
    end
  end
end
