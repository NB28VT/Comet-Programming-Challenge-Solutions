def leap_year?(year)
  if (year%4 == 0) && (year%100 == 0)
    if year%400 == 0
      true
    else
      false
    end
  elsif (year%4 == 0) != (year%100 == 0)
      true
  else
    false
  end
end
