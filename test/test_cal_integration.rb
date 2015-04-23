require_relative 'helper'

class TestCalIntegration < Minitest::Test

# 0 args -> help message
  def test_no_arguments_help_message
    output = `./Cal`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with `./Cal.rb [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end
end