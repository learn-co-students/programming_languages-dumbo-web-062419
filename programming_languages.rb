def reformat_languages(languages)
  new_hash = {}
  languages.each do |oo_f, lang|
    lang.each do |name, stat|
      if name == :javascript
        new_hash[name] ||= stat
        new_hash[name][:style] = []
        new_hash[name][:style] << :oo
        new_hash[name][:style] << :functional
      else
        new_hash[name] ||= stat
        new_hash[name][:style] = []
        new_hash[name][:style] << oo_f
      end
    end
  end
  new_hash
end
