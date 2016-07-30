json.array!(@sectors) do |sector|
  json.extract! sector, :id, :en_name, :en_description
  json.url sector_url(sector, format: :json)
end
