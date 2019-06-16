require 'pry'

def reformat_languages(languages)
  # your code here
  lang_prime = {}
  languages.each do |style, langs|
  	langs.each do |lang, val|
  		# check if we initiated the languages in hash
  		unless lang_prime.key? lang
	  		lang_prime[lang] = val
	  		lang_prime[lang][:style] = []
	  	end
  		lang_prime[lang][:style] << style
  	end
  end
  lang_prime
end