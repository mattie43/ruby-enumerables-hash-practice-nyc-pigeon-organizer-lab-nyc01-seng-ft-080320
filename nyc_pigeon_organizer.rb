def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = Hash.new
  data.each do |k,v|
    puts "key: #{k}"
    puts "value: #{v}"
    v.each do |k2,v2|
      puts "key2: #{k2}"
      puts "value2: #{v2}"
      v2.each do |name|
        puts "name: #{name}"
        if !pigeon_list[name]
          pigeon_list[name] = Hash.new
        end
        if !pigeon_list[name][k]
          pigeon_list[name][k] = []
        end
        if pigeon_list[name][k]
          pigeon_list[name][k] << k2.to_s
        end
        puts "list: #{pigeon_list}"
      end
    end
  end
  pigeon_list
end

=begin

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

-----------------------------

pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}

=end