def staggered_case(string)
  result = ''
  string.chars.each_with_index do |char, index|
    if index.even?
      result << char.upcase
    else
      result << char.downcase
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case2(string)
  result = ''
  need_upcase = true
  string.chars.each do |char|
    if need_upcase == true && ('a'..'z').include?(char.downcase)
      result << char.upcase
      need_upcase = !need_upcase
    elsif need_upcase == false && ('a'..'z').include?(char.downcase)
      result << char.downcase
      need_upcase = !need_upcase
    else
      result << char
    end
  end
  result
end

p staggered_case2('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case2('ALL CAPS') == 'AlL cApS'
p staggered_case2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'