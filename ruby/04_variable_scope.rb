class Dog
    @@name = "hello"
    def self.name
        @@name
    end
    def full_name
        "#{@@name} #{@@name}"
    end
end

dog = Dog.new

puts dog.full_name

puts Dog.name