require 'rest-client'
require 'json'

apiToken = ENV["DISTELLI_APITOKEN"]
username = ENV["DISTELLI_USERNAME"]
apiurl = "https://api.distelli.com"

# Example Distelli ListApps call
listappsurl=apiurl + "/" + username + '/apps?apiToken=' + apiToken
response = RestClient.get listappsurl, {:accept => :json}
print response.code
print response.headers
print response.body

# Example Distelli CreateApp call
newappname = "NewAppzz9"
jsonbody = {:description => "This is the new application description"}.to_json
#jsonbody = '{"description": "This is the new application description"}'
createappurl=apiurl + '/' + username + '/apps/' + newappname + '?apiToken=' + apiToken
response = RestClient.put createappurl, jsonbody, :content_type => :json, :accept => :json
print response.code
print response.headers
print response.body
