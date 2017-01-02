class Anagram

  def anagrams(word, possible_anagrams)
    if possible_anagrams.length > 0
      @list_of_anagrams = Array.new
      possible_anagrams.each do |anagram|
        if is_anagram_of(word, anagram)
          @list_of_anagrams.push anagram
        end
      end
    else
       fail WithoutPossibleAnagramsException.new
    end
    @list_of_anagrams
  end

  def is_anagram_of(word, anagram)
    @word = word.chars.sort_by(&:downcase).join
    @anagram = anagram.chars.sort_by(&:downcase).join
    if @word == @anagram
      true
    else
      false
    end
  end

end
