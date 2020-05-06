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
end
  

