class ArabicNumeral
  attr_accessor :number

  SYMBOLS = {
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

  def initialize(arabic)
    @number = arabic
  end

  def to_roman
    result = ''
    SYMBOLS.each do |key, value|
      while number >= key
        self.number = self.number - key
        result += value
      end
    end
    result
  end
end