require_relative './arabic_to_roman'
require 'minitest/autorun'

describe ArabicNumeral do

  it 'converts Arabic numerals to Roman numerals' do
    special_symbols = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
    special_symbols.each do |key, value|
      ArabicNumeral.new(key).to_roman.must_equal(value)
    end

    ArabicNumeral.new(3964).to_roman.must_equal('MMMCMLXIV')
    ArabicNumeral.new(3965).to_roman.must_equal('MMMCMLXV')
    ArabicNumeral.new(3966).to_roman.must_equal('MMMCMLXVI')
     ArabicNumeral.new(348).to_roman.must_equal('CCCXLVIII')
    ArabicNumeral.new(349).to_roman.must_equal('CCCXLIX')
    ArabicNumeral.new(350).to_roman.must_equal('CCCL')
    ArabicNumeral.new(351).to_roman.must_equal('CCCLI')
    ArabicNumeral.new(352).to_roman.must_equal('CCCLII')
    ArabicNumeral.new(353).to_roman.must_equal('CCCLIII')
    ArabicNumeral.new(354).to_roman.must_equal('CCCLIV')
    ArabicNumeral.new(355).to_roman.must_equal('CCCLV')
    ArabicNumeral.new(356).to_roman.must_equal('CCCLVI')
    ArabicNumeral.new(357).to_roman.must_equal('CCCLVII')
    ArabicNumeral.new(358).to_roman.must_equal('CCCLVIII')
    ArabicNumeral.new(3974).to_roman.must_equal('MMMCMLXXIV')
    ArabicNumeral.new(3975).to_roman.must_equal('MMMCMLXXV')
    ArabicNumeral.new(3976).to_roman.must_equal('MMMCMLXXVI')
    ArabicNumeral.new(3977).to_roman.must_equal('MMMCMLXXVII')
    ArabicNumeral.new(3978).to_roman.must_equal('MMMCMLXXVIII')
    ArabicNumeral.new(3979).to_roman.must_equal('MMMCMLXXIX')
    ArabicNumeral.new(3980).to_roman.must_equal('MMMCMLXXX')
    ArabicNumeral.new(3981).to_roman.must_equal('MMMCMLXXXI')
  end
end