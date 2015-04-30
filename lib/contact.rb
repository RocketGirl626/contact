class Contact
  @@contacts = []
  attr_reader(:name)
  
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:save) do
    @@contacts.push(self)
  end
end
