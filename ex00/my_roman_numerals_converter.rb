##
##
## QWASAR.IO -- my_roman_numerals_converter
##
##
## @param {integer} num
##
## @return {string}
##

def my_roman_numerals_converter(num)
    roman_vals = {
        1000 => "M",
        900 => "CM", 
        500 => "D",
        400 => "CD",
        100 =>"C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
    }

    result = ""
    roman_vals.keys.each do |divisor|
        quotient, modulus = num.divmod(divisor)
        result << roman_vals[divisor] * quotient
        num = modulus
    end
    result
end


#test
#puts(my_roman_numerals_converter(14))
#puts(my_roman_numerals_converter(79))
#puts(my_roman_numerals_converter(845))
#puts(my_roman_numerals_converter(2022))