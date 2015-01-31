class RomanNumeral
  SYMBOLS = {
    'CM' => 900,
    'CD' => 400,
    'XC' => 90,
    'XL' => 40,
    'IX' => 9,
    'IV' => 4,
    'M' => 1000,
    'D' => 500,
    'C' => 100,
    'L' => 50,
    'X' => 10,
    'V' => 5,
    'I' => 1
  }

  def initialize(x)
    @number = x
  end

  def to_arabic
    result = 0
    while @number != ''
      SYMBOLS.each do |roman, arabic|
        if @number.include? roman
          @number.slice! roman
          result += SYMBOLS[roman]
          return result += SYMBOLS[@number] unless SYMBOLS[@number].nil?
        end
      end
    end
    result
  end
end
