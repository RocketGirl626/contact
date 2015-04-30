class Contact
  @@contacts = []
  attr_reader()
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
  end
end
