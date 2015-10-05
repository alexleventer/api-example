import requests
import json
import os

apiToken = os.environ['DISTELLI_APITOKEN']
username = os.environ['DISTELLI_USERNAME']
apiurl = "https://api.distelli.com"

# Example Distelli ListApps call
listappsurl=apiurl + '/' + username + '/apps?apiToken=' + apiToken
response = requests.get(listappsurl)
#Careful, the will print your token
#print(response.url)
print(response.text)

# Example Distelli CreateApp call
newappname = "NewApp002"
jsonbody = json.dumps({'description': 'This is the new application description'})
createappurl=apiurl + '/' + username + '/apps/' + newappname + '?apiToken=' + apiToken
response = requests.put(createappurl, data=jsonbody)
#Careful, the will print your token
#print(response.url)
print(response.text)
