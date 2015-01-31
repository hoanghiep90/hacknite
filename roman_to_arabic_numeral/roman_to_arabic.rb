class RomanNumeral
  def initialize(x)
    @number = x
  end

  def to_arabic
    symbols = {
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
    return symbols[@number] unless symbols[@number].nil?

    result = 0
    while @number != ''
      symbols.each do |roman, arabic|
        if @number.include? roman
          @number.slice! roman
          result += symbols[roman]
          return result += symbols[@number] unless symbols[@number].nil?
          break
        end
      end
    end
  end
end
