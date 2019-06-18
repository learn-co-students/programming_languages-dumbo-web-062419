require 'pry'
#
# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },

def reformat_languages(languages)
  languages.each_with_object({}) do |(style,p_languages), return_hash|
    p_languages.each do |p_language, type|
      if return_hash[p_language]
        return_hash[p_language][:style] << style
      else
      #binding.pry
        return_hash[p_language] = {}
        return_hash[p_language][:type] = type[:type]
        return_hash[p_language][:style] = []
        return_hash[p_language][:style] << style
      end
      #binding.pry
    end
    #binding.pry
  end
  #binding.pry
end

#
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
# }
