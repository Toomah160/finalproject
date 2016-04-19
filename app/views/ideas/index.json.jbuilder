json.array!(@ideas) do |idea|
  json.extract! idea, :id, :name, :skills, :overview, :platform_id
  json.url idea_url(idea, format: :json)
end
