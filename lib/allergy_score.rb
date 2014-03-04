def allergy_score(total_score)
  allergens_with_scores = {128 => 'cats', 
                            64 => 'pollen', 
                            32 => 'chocolate', 
                            16 => 'tomatoes', 
                            8 => 'strawberries', 
                            4 => 'shellfish', 
                            2 => 'peanuts', 
                            1 => 'eggs'}
  result_allergies = []
  allergens_with_scores.each do |score, allergen|
    if total_score >= score
      total_score -= score
      result_allergies << allergen
    end
  end
  result_allergies
end

while true
  puts "Enter your allergy score"
  input = gets.chomp
  if input == '\quit'
    exit
  else 
    puts "Never under any conditions eat #{allergy_score(input.to_i).join(", ")}!!!!"
  end
end


