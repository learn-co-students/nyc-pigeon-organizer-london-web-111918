def nyc_pigeon_organizer(hash_data)
  new_hash = {}
  hash_data.each do |attr, data|
  	data.each do |value, names|
  		names.each do |name|
  			if new_hash[name] == nil
  				new_hash[name] = {}
  				new_hash[name][attr] = []
  			elsif new_hash[name][attr] == nil
  				new_hash[name][attr] = []
  			end
  			new_hash[name][attr] << value.to_s
  		end
  	end
  end
  new_hash
end
