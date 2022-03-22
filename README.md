# SpecIF Backend

Inside this repository you can find three docker-compose files and two batch scripts. 
The batch scripts start the corresponding docker-compose files and setup the SpecIF API with a working DB for you.

## TLS/SSL Certifcate
The two non-standard docker-compose files include a developer certifcate.   
This is ***not*** secure!  
Use only for local testing or in secure environments.  
To use your own certificate, see Docker-compose.yml below.

### Anonymous readers allowed
This configuration allows every user, without credentials, to access the "Get" endpoints to download SpecIF metadata.


### Registered readers only
This configuration allows only registered users (with at least the "Reader" role) to access metadata from the SpecIF API.

### Docker-compose.yml
This is a basic SpecIF build, using the same standard options as Anonymous readers allowed.  
However, there is no TLS/SSL certificate specified.  
You will need to set environment variables to specify your own certificate, if you want to host on https:
- ASPNETCORE_Kestrel__Certificates__Default__Password
- ASPNETCORE_Kestrel__Certificates__Default__Path


You also could mount your local certificates into the docker volume and specify path and password as explained above.  
All options, with the exception of the certificate, can be used as runtime arguments with --\<argumentname\>=\<argument\>


### Other options
For other options, please see the SpecIF Backend Readme
