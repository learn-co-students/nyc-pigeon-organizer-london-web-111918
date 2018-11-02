require "pry"

def nyc_pigeon_organizer(data)
  reorganized_pigeons = {}
  data.each do |attribute, values|
    values.each do |value, names|
      names.each do |name|
        reorganized_pigeons[name] = {}
      end
    end
  end
  data.each do |attribute, values|
    reorganized_pigeons.each do |name, stats|
      reorganized_pigeons[name][attribute] = []
    end
  end
  data.each do |attribute, values|
    values.each do |value, names|
      reorganized_pigeons.each do |name, stats|
        if names.include?(name)
          reorganized_pigeons[name][attribute] << value.to_s
        end
      end
    end
  end
  reorganized_pigeons
end
