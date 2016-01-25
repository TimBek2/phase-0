class NameData

  attr_accessor :name

  def initialize
    @name = 'Ryan'
  end
  def print_name
    "#{name}"
  end
end

class Greetings
  def hello
    namedata = NameData.new
    puts "Hello #{namedata.name}! How wonderful to see you today."
  end
end


greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."