Several REST type APIs are automated to verify and validate the correct functioning of the tasks assigned to the service; get,post,put,delete type APIs will be validated.

Consumption of the service

The base url to consume the service is: https://reqres.in/; depending on the execution of the service to be performed, the enpoint changes Consult user= "/api/user/2"; Consult all users = "api/unknown"; Create user = "api/users"; Update User= /api/users/2; Delete User= /api/users/2

Request for each module

GET https://reqres.in/api/users/2

POST https://reqres.in/api/users - {"name": "Andres", "job": "Tester"}

PUT https://reqres.in/api/users/2 - {"name": "Andres Mieles", "job": "QA Analyst"}

DELETE https://reqres.in/api/users/2
