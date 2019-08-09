def reformat_languages(languages)
  languages.each_with_object({}) do |(style, p_languages), return_hash|
    p_languages.each do |p_language, type|
      if return_hash[p_language]
        return_hash[p_language][:style] << style
      else
        return_hash[p_language] = {}
        return_hash[p_language][:type] = type[:type]
        return_hash[p_language][:style] = []
        return_hash[p_language][:style] << style
      end
    end
  end
end