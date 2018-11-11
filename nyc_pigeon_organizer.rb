def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute, value|
    value.each do |info, pigeons|
      pigeons.each do |name|
        if pigeon_list.include?(name)
          if pigeon_list[name].include?(attribute)
            pigeon_list[name][attribute] << info.to_s
          elsif !pigeon_list[name].include?(attribute)
            pigeon_list[name][attribute] = [info.to_s]
          end
        else
          pigeon_list[name] = {attribute => [info.to_s]}
        end
      end
    end
  end
  pigeon_list
end
