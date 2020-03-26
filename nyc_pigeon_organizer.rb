def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  data.each do |k,v|
    v.each do |n_v, pigeons|
      pigeons.each do |name|
        if !organized_pigeons[name]
          organized_pigeons[name] = {}
        end

        if !organized_pigeons[name][k]
          organized_pigeons[name][k] = []
        end

        organized_pigeons[name][k] << n_v.to_s
      end
    end
  end
  organized_pigeons
end
