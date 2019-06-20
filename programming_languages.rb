# binding.pry
require 'pry'

# languages defined as a global variable within this class to be operated upon
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

# #reformat_languages takes the languages hash and returns the below:
# =>
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }
# def reformat_languages(languages)
#   # your code here
#   # Stores the return value of the new hash
#   new_hash = {}

#   # Iterates through the languages hash
#   languages.each do |style, lang_names|
#     # Iterates through lang_names hash
#     lang_names.each do |lang_name, lang_type|
#       # Adds the language type to lang_names
#       new_hash[lang_name] = lang_type
#       # Checks to see if new_hash[lang_name][:style] has a value of key :oo. If it does, pushes style to the array
#       if new_hash[lang_name][:style] == nil
#           new_hash[lang_name][:style] = []
#       end
#       # Else Adds the language style to an array
#       new_hash[lang_name][:style] << style
#       # binding.pry
#       # Adds the language style to an array
#       # new_hash[lang_name][:style] = [style]
#       # binding.pry
#       # If new_hash[lang_name][style] is not nil and the last item in new_hash[lang_name][style] array is not the current style, append it to the end of the array
#       # if new_hash[lang_name][:style].nil? == false && new_hash[lang_name][:style][0] != style
#       #   new_hash[lang_name][:style] << style
#       # end
#       # binding.pry
#     end
#   end
#   # binding.pry

#   # Return value
#   new_hash
# end

# ????????????????????????? Not fully sure how this works
def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, lang_names|
    lang_names.each do |lang_name, lang_type|
      if new_hash[lang_name] == nil
        new_hash[lang_name] = lang_type
      end
      if new_hash[lang_name][:style] == nil
          new_hash[lang_name][:style] = []
          # binding.pry
      end
      new_hash[lang_name][:style] << style
    end
  end
  
  new_hash
end

# Invoking method below to test
puts reformat_languages(languages)
