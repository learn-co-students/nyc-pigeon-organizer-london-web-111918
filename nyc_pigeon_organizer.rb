require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |info, info_hash|
    info_hash.each do |attribute, name_array|
      name_array.each do |names|
      if !new_hash.has_key?(names)
        new_hash[names] = {}
        end
        new_hash[names][info] ||= []
        new_hash[names][info] << attribute.to_s
      end
    end
  end
  return new_hash
end