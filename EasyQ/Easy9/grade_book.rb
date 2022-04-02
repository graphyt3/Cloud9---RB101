def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3)/3
  case 
  when 90 <= average && average <= 100
    'A'
  when 80 <= average && average <= 90
    'B'
  when 70 <= average && average <= 80
    'C'
  when 60 <= average && average <= 70
    'D'
  else 0 <= average && average < 60
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"