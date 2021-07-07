
def nyc_pigeon_organizer(data)
      pigeon_hash = {}

      data.each do |outer_h, inner_h|
        inner_h.each do |key, pigeons|
          pigeons.each do |pigeon|

            if pigeon_hash.include?("#{pigeon}") == false
              pigeon_hash[pigeon] = {}
            end

            if pigeon_hash[pigeon][outer_h] == nil
              pigeon_hash[pigeon][outer_h] = []
            end

           pigeon_hash[pigeon][outer_h] << key.to_s 
          end
        end
      end

  pigeon_hash
end
