# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      begin
        str = '.'.encode(enc)
      rescue Encoding::ConverterNotFoundError
        p "Skipping encoding: #{enc}"
        next
      end
      assert(RegexpM17N.non_empty?(str))
    end
  end
end
