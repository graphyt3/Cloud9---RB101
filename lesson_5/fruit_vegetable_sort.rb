hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_array = []

hsh.map do |key, sub_hash|
  if sub_hash[:type] == 'fruit'
    #new_colors_array = []
    new_array << sub_hash[:colors].map do |element|
      #new_colors_array << element.capitalize
      element.capitalize
    end
    #new_array << new_colors_array
  else
    new_array << sub_hash[:size].upcase
  end
end

p new_array