json.array!(@tests) do |test|
  json.extract! test, :id, :name, :xslt, :output
  json.url test_url(test, format: :json)
end
