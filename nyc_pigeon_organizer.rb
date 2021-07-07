def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_hash = {}
  
  data.each do |key, value|
    value.each do |new_value, pigeons|
      pigeons.each do |pigeons|
        
        if !pigeon_hash[pigeons]
          pigeon_hash[pigeons] = {}
        end

        if !pigeon_hash[pigeons][key]
          pigeon_hash[pigeons][key] = []
        end

        pigeon_hash[pigeons][key] << new_value.to_s

      end
    end
  end
  pigeon_hash
end
