def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |attribute, values|
    values.each do |info, pigeon_names|
      pigeon_names.each do |name|
        if pigeons.include?(name)
          if pigeons[name].include?(attribute)
            pigeons[name][attribute] << info.to_s
          else
            pigeons[name][attribute] = [info.to_s]
          end
        else
          pigeons[name] = {attribute => [info.to_s]}
        end
      end
    end
  end
  pigeons
end