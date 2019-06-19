require 'pry'

def reformat_languages(languages)
  new_hash = {}
  #binding.pry
  languages.each do |styles, values|
    binding.pry
    values.each do |langs, attributes|
      if new_hash[langs]

      else
        new_hash[langs] = attributes
      end
      if new_hash[langs][:style]
        new_hash[langs][:style] << styles
      else
      new_hash[langs][:style] = []
      new_hash[langs][:style] << styles
          end
      end
  end
  new_hash
end
