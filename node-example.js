var Client = require('node-rest-client').Client;

var apiToken = process.env.DISTELLI_APITOKEN;
var username = process.env.DISTELLI_USERNAME;
var apiurl = "https://api.distelli.com";
client = new Client();

// Example Distelli ListApps call
client.get(apiurl + '/' + username + '/apps?apiToken=' + apiToken, function(data, response){
            // parsed response body as js object
            console.log(data);
            // raw response
            //console.log(response);
        });

// Example Distelli CreateApp call
var newappname = "NewApp001"
var jsonbody = {
  description: "This is the new application description"
};

client.put(apiurl + '/' + username + '/apps/' + newappname + '?apiToken=' + apiToken, jsonbody, function(data,response) {
    // parsed response body as js object
    console.log(data);
    // raw response
    //console.log(response);
});
