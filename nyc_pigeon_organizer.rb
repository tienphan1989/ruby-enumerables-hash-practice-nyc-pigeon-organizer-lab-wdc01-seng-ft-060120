def nyc_pigeon_organizer(data)
  new_data = {}
  data.each do |key, value|
    #color is key, value is what color
    value.each do |category, array|
      #category is color/gender/lives is group of names, array is group of names
      array.each do |name|
        new_data[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  new_keys=new_data.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      new_keys.each do |value|
        if bird_name == value
          new_data[value][:color].push(bird_color.to_s)
        end
      end
    end
  end
  data[:gender].each do |gender_type, name|
    name.each do |bird_name|
      new_keys.each do |value|
        if bird_name == value
          new_data[value][:gender].push(gender_type.to_s)
        end
      end
    end
  end
  data[:lives].each do |lives_wheres, name|
    name.each do |bird_name|
      new_keys.each do |value|
        if bird_name == value
          new_data[value][:lives].push(lives_wheres)
        end
      end
    end
  end
  return new_data
end