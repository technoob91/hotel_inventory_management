class PropertyService

  def get_property_list
    property = Property.find_all()

    puts(property)
  end
  
end