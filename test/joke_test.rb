require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test

  def test_it_exists
    joke = Joke.new
    assert_instance_of Joke, joke
  end

  def test_it_has_an_id
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal 1, joke.id
  end

  def test_it_has_a_question
    skip
    joke = Joke.new(1, "Why did the strawberry cross the road?")
    assert_equal "Why did the strawberry cross the road?", joke.question
  end

  def test_it_has_an_answer
    skip
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal "Because his mother was in a jam.", joke.answer
end

end
