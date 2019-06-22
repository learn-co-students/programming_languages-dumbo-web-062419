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
#
#
#
def reformat_languages(languages)
  newHas= {}
  languages.each do |type, lang|
    lang.each do |name, atr|
      atr.each do |data,val|
        if newHas.key?(name)== false 
          newHas[name]= {data => val, :style => [type]}
        else
          newHas[name][:style] << type
        end
      end
      end
    end
    newHas
  end
      