def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = Hash.new
  data.each do |k,v|
    v.each do |k2,v2|
      v2.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = Hash.new
        end
        if !pigeon_list[name][k]
          pigeon_list[name][k] = []
        end
        if pigeon_list[name][k]
          pigeon_list[name][k] << k2.to_s
        end
      end
    end
  end
  pigeon_list
end