=begin
Problem Statement

Every object in Ruby has at least one parent class. But most objects typically inherit from multiple classes and mixes in various modules. These classes and modules together forms the inheritance hierarchy of the object. The methods added to an object by a class/module can however be overriden by others which are below them in the inheritance chain.

In this problem, the location_in_hierarchy method takes two parameters: object and method. You've to find the very first superclass of the object (starting with BasicObject) that defines method.
=end

def location_in_hierarchy(object, method)
  # Your code here
  klass = object.class
    while klass.superclass != nil and klass.superclass.instance_methods.include?(method)
      klass = klass.superclass
    end
  klass
end
