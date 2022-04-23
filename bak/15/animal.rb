class Animal
  def initialize(name)
    @name = name
  end

  def jump
    puts "#{@name} is jumping..."
  end
end

class Cat < Animal

  def initialize
    super 'Murzik'
  end

  def say_meow
    puts "#{@name} Meowww!"
  end
end

class Dog < Animal

  def initialize
    super 'Sharik'
  end

  def say_gav
    puts "#{@name} Gavvv!"
  end
end

cat = Cat.new
dog = Dog.new

cat.jump
cat.say_meow

dog.jump
dog.say_gav
