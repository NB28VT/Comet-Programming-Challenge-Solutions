def distance(point1, point2)
  @point1 = point1
  @point2 = point2

  first_formula = ((point2[0] - point1[0])**2) + ((point2[1] - point1[1])**2)
  distance = Math.sqrt(first_formula)
  distance.round(3)
end
