class Scrabble

  def score(word)
      return 0 if word == nil 
      return 0 if word == ""
      values =  word.chars.map do |letter|
      point_values[letter.upcase]
    end
    values.inject(0, :+)
  end

  def score_with_multipliers(word, letter_multipliers, world_multiplier = 1 )
    bonus_points = 10 if word.length == 7 
    values = word.chars.map.with_index do |letter, index|
      point_values[letter.upcase] * letter_multipliers[index] * world_multiplier
    end 
    values.inject(0, :+)
  end 

 

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10, 
    }
  end

end
