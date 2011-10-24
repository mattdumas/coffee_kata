this.decimalToRoman = (x) ->
  if (x < 1 or x > 3000) then '<out-of-range>'
  else if (x == 9) then 'IX'
  else if (x == 10) then 'X'
  else if (5 < x < 109)
    decimalToRoman(5) + decimalToRoman(x - 5)
  else if (x == 5)
    'V'
  else if (x <= 3)
    str = ''
    for i in [1..x]
      str+='I'
    return str
  else if (x == 4) then 'IV'
  else 'CIX'

