require 'rspec'
require_relative '../model/anagram'
require_relative '../model/without_possible_anagrams_exception'

describe 'Anagram' do

  it 'example given' do
    anagram = Anagram.new
    word = "horse"
    possible_anagrams = ['heros', 'horse', 'shore', 'standard']
    output_of_anagrams = ['heros', 'horse', 'shore']
    expect(anagram.anagrams(word, possible_anagrams)).to match_array(output_of_anagrams)
  end

  it '1 anagram of 1 possible' do
    anagram = Anagram.new
    word = "horse"
    possible_anagrams = ['heros']
    output_of_anagrams = ['heros']
    expect(anagram.anagrams(word, possible_anagrams)).to match_array(output_of_anagrams)
  end


  it '2 anagrams of 3 possible' do
    anagram = Anagram.new
    word = "hola"
    possible_anagrams = ['hola','hoa','laoh']
    output_of_anagrams = ['hola','laoh']
    expect(anagram.anagrams(word, possible_anagrams)).to match_array(output_of_anagrams)
  end

  it '0 anagrams' do
    anagram = Anagram.new
    word = "horse"
    possible_anagrams = ['standard']
    output_of_anagrams = []
    expect(anagram.anagrams(word, possible_anagrams)).to match_array(output_of_anagrams)
  end

  it 'without possible anagrams expect exception' do
    anagram = Anagram.new
    word = "hola"
    possible_anagrams = []
    output_of_anagrams = ['hola','laoh']
    expect{anagram.anagrams(word, possible_anagrams).to match_array(output_of_anagrams)}.to raise_exception(WithoutPossibleAnagramsException)
  end

end
