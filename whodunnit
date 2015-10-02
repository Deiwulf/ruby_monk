def location_in_hierarchy(object, method)
  # Your code here
  klass = object.class
    while klass.superclass != nil and klass.superclass.instance_methods.include?(method)
      klass = klass.superclass
    end
  klass
end
