=begin
A class can have only one constructor, that is a method called initialize. The method is automatically invoked
when a new instance of the class is created.
=end


class Cat
  def initialize(name)
    @name = name
    puts "This is a constructor method #{name.capitalize}"
  end
  def speak
    puts "My name is #{@name}"
  end
end

cat = Cat.new("cute")
cat.speak()

# Private methods

# Can not be accessed ouside the class
#

class Cat
  def initialize(name)
    @name = name
    puts "This is a constructor method #{name.capitalize}"
  end
  def speak
    puts "My name is #{@name}"
  end

  private
  def id
    print "This is my id"
  end
end

cat = Cat.new("cute")
cat.id

# Protected
# Can not be accessed ouside the class unless the class is inheriting from the base class
#
#

class Animal
  def initialize
    @name = "animal"
  end

  def getAge
    puts age()
  end

  def getId
    id()
  end
  private
  def id
    puts "Id"
  end

  protected
  def age()
    puts 15
  end
end

class Cat < Animal
  def initialize(name)
    @name = name
    puts "This is a constructor method #{name.capitalize}"
  end
  def speak
    puts "My name is #{@name}"
  end

  private
  def id
    print "This is my id"
  end
end

cat = Cat.new("cute")
cat.speak
cat.getId
# cat.getName()
cat.getAge