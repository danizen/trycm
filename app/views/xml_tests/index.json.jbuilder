json.array!(@xml_tests) do |xml_test|
  json.extract! xml_test, :id, :name, :xslt, :output
  json.url xml_test_url(xml_test, format: :json)
end
