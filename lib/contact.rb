class Contact
  @@contacts = []
  attr_reader(:name, :birth_month)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @birth_month = attributes.fetch(:birth_month)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

end
