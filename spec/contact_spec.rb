require('rspec')
require('contact')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#name') do
    it('returns the name of the contact') do
      test_contact = Contact.new({:name => 'Audrie Talbot',:birth_month => 07})
      test_contact.save()
      expect(test_contact.name()).to(eq('Audrie Talbot'))
    end
  end

  describe('#birth_month') do
    it('returns the birth month of a contact') do
      test_contact = Contact.new({:name => 'Audrie Talbot',                         :birth_month => 07})
      test_contact.save()
      expect(test_contact.birth_month()).to(eq(07))
    end
  end
  
  describe('.all') do
    it('is empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end
end
