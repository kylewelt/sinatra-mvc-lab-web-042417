class PigLatinizer

  VOWELS = "aeiouAEIOU"

  def piglatinize(word)
    if !VOWELS.include?(word[0])
      split_word = word.partition(/[aeiou]/)
      split_word[1] + split_word[2] + split_word[0] + "ay"
    else
      word + "way"
    end
  end

  def to_pig_latin(phrase)
    phrase.split.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
