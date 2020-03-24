def nyc_pigeon_organizer(data)
  pgn_hash = {}
  x = 0

  data.each do |k, v|
    v.each do |new_value, names|
      names.each do |name|

        if !pgn_hash[name]
          pgn_hash[name] = {}
        end

        if !pgn_hash[name][k]
          pgn_hash[name][k] = []
        end

        pgn_hash[name][k] << new_value.to_s
      end
    end
  end
  pgn_hash
end


