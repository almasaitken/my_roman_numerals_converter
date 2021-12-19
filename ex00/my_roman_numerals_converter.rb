def my_roman_numerals_converter (num)
    decimals = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    romanNumerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

    final = ""

    for i in 0...decimals.length
        while decimals[i]<=num do
            final += romanNumerals[i]
            num -= decimals[i]
        end
    end

    return final
end


