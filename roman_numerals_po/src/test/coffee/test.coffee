$(document).ready ->

  module 'decimalToRoman'

  test 'out of range values should be ignored', ->
    equal decimalToRoman(-1), '<out-of-range>'
    equal decimalToRoman(3001), '<out-of-range>'

  test 'Should return result for x <= 10', ->
    equal decimalToRoman(1), 'I'
    equal decimalToRoman(2), 'II'
    equal decimalToRoman(3), 'III'
    equal decimalToRoman(4), 'IV'
    equal decimalToRoman(5), 'V'
    equal decimalToRoman(6), 'VI'
    equal decimalToRoman(7), 'VII'
    equal decimalToRoman(8), 'VIII'
    equal decimalToRoman(9), 'IX'
    equal decimalToRoman(10), 'X'

  test 'Should return CIX for 109', ->
    equal decimalToRoman(109), 'CIX'
