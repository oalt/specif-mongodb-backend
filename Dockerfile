FROM mcr.microsoft.com/dotnet/runtime-deps:5.0-buster-slim

ENV ASPNETCORE_URLS=https://+:888;http://+:887;
ENV ASPNETCORE_HTTPS_PORT=888
ENV ASPNETCORE_Kestrel__Certificates__Default__Password=
ENV ASPNETCORE_Kestrel__Certificates__Default__Path=/root/.aspnet/https/MDD4All.SpecIf.Microservice.pfx

ADD ["SpecIF-Backend/src/MDD4All.SpecIF.Microservice/bin/Debug/netcoreapp3.1/publish", "/app/"]
COPY ["/MDD4All.SpecIf.Microservice.pfx", "/root/.aspnet/https/MDD4All.SpecIf.Microservice.pfx"]

WORKDIR /app/

ENTRYPOINT ["./MDD4All.SpecIf.Microservice","mongodb", "true"]

