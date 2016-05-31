def nyc_pigeon_organizer(data)
  result = {}
  data.each do |key, h|
    h.each do |value, names|
      names.each do |name|
        result[name] ||= {}
        result[name][key] ||= []
        result[name][key] << value.to_s
      end
    end
  end
  result
end
