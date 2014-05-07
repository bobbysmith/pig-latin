require "pig_latin/version"

module PigLatin
  def self.translate(word)

    word_length = word.length - 1

    if /\A[aeiou]/i.match(word)
      word +"way"
    elsif /\Ay/i.match(word) #|| /\A[^aeiou]/i.match(word)
      word[1..word_length] + word[0] + "ay"
    elsif matched_word = /[^aeiouy]+/.match(word)
      word.slice!(0, matched_word.to_s.length)
      word + matched_word.to_s + "ay"
    end
  end
end


