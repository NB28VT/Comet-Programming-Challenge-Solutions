class Student

  attr_reader :first_name, :last_name, :grades

  def initialize(first_name, last_name, grades)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
  end

  def full_name
    [first_name, last_name].join(' ')
  end

  def grade_average
    if grades == []
      return 0
    else
      ((grades.inject{|sum, x| sum + x.to_f})/(grades.length))
    end

  end


  def letter_grade
    if grade_average.between?(90,100)
      'A'
    elsif grade_average.between?(80,90)
      'B'
    elsif grade_average.between?(70,80)
      'C'
    elsif grade_average.between?(60,70)
      'D'
    else
      'F'
    end
  end

  def passed?
    if letter_grade == 'F'
      return false
    else
      return true
    end
  end

  def to_s
    "#{full_name}, #{letter_grade} (#{grade_average})"
  end








end
