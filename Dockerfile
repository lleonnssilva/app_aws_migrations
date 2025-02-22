FROM mcr.microsoft.com/dotnet/sdk:6.0
COPY . /app
WORKDIR /app
RUN dotnet tool install --global dotnet-ef --version 6.0.0
RUN dotnet restore
RUN dotnet build
RUN chmod +x ./entrypoint.sh
CMD /bin/bash ./entrypoint.sh