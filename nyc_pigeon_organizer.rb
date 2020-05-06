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
  x
  data[:color] each do |bird_color, name|
    
   
   
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return final 
end 

