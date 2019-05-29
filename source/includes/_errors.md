# Errors

The Lessonly API uses the following error codes:

Error Code | Meaning
---------- | -------
400 | Malformed Request -- Verify that the parameters required are being passed in and all parameters have the format specified in the documentation.  
401 | Unauthorized -- Verify that you have passed your company's domain and API key correctly.
403 | Forbidden -- The endpoint that you have tried to access you do not have privileges to.
404 | Not Found -- The resource in the endpoint could not be found.  Verify the resource id.
405 | Method Not Allowed -- You tried to access an endpoint with an invalid method
406 | Not Acceptable -- You requested a format that isn't json
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarially offline for maintanance. Please try again later.
