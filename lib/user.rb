require_relative 'joke'

class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def jokes
    []
  end

  def learn(joke)
    joke = Joke.new(joke)
  end

end
