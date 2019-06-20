def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang, type|
      if new_hash.has_key?(lang)
        new_hash[lang][:style].push(style)
      else
        new_hash[lang] = type
        new_hash[lang][:style] = [style]
      end
    end
  end
  return new_hash
end
