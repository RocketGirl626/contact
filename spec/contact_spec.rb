require('rspec')
require('contact')

describe(Contact) do
  before() do
    Contact.clear()
  end
end

describe('#name') do
  it('return the name of the contact') do
    test_contact = Contact.new({:name => "Audrie Talbot"})
    test_contact.save()
    expect(test_contact.name()).to(eq("Audrie Talbot"))
  end
end
