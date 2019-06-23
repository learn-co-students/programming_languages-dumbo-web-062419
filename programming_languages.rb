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

def reformat_languages(languages)
  reformatted= {}
  languages.each do |type, lang|
    lang.each do |name, atr|
      atr.each do |data,val|
        if reformatted.key?(name)== false 
          reformatted[name]= {data => val, :style => [type]}
        else
          reformatted[name][:style] << type
        end
      end
      end
    end
    reformatted
  end
      