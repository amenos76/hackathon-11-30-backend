require 'rest-client'
require 'json'

User.destroy_all
Zone.destroy_all

baseURL = 'http://api.timezonedb.com/v2.1/list-time-zone?key=N5CVZOZCI04A&format=json'
data = RestClient.get baseURL

parsed_data = JSON.parse(data)

parsed_data['zones'].map do |country|
    Zone.create(countryCode: country['countryCode'], 
    countryName: country['countryName'], 
    zoneName: country['zoneName'], 
    gmtOffset: country['gmtOffset'], 
    timestamp: country['timestamp'])
end