#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim 
WORKDIR /app
ENV ASPNETCORE_URLS https://localhost:888
ENV ASPNETCORE_URLS http://localhost:887

COPY ["/src/MDD4All.SpecIF.Microservice/bin/Release/netcoreapp3.1", "netcoreapp3.1/"]


WORKDIR /netcoreapp3.1/publish/
ENTRYPOINT ["dotnet", "MDD4All.SpecIf.Microservice"]
