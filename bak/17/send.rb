class Foo
  attr_accessor :x, :y

  def initialize hash
    hash.each do |key, value|
      send "#{key}=", value
    end
  end

end

s = Foo.new :x => 1, :y => 5

puts s.x
puts s.y
