json.array!(@programmers) do |programmer|
  json.extract! programmer, :name, :expertise, :skills
  json.url programmer_url(programmer, format: :json)
end