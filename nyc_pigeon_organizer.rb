def pigeon_names(data)
  name_array = []
  data.each{ |k,v|
    value_obj = v

    value_obj.each{ |k1,v1|
      names = v1
      name_array.concat(names)
    }
  }
return name_array.uniq
  end


def get_name_obj(data)
  new_obj = {}

  names = pigeon_names(data)
  names.each{|name|

  new_obj[name]= {
    :color => [],
    :gender =>[],
    :lives => []}

  }
return new_obj
end

def nyc_pigeon_organizer(data)
  final_obj = get_name_obj(data)
  p pigeon_names(data)
  p final_obj
  data.each{|key,value| #key is :color, :gender, :lives
    value.each{ |sec_key, sec_value| #sec_key is :purple, :grey
      sec_value.each{ |name|
      final_obj[name][key] << sec_key.to_s
      }

     }
  }
  return final_obj
end
