FROM mcr.microsoft.com/dotnet/core/sdk:3.0

# Install .NET CLI dependencies
RUN apt install -y apt-transport-https dirmngr gnupg ca-certificates \ 
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \ 
    && echo "deb https://download.mono-project.com/repo/debian stable-buster main" | tee /etc/apt/sources.list.d/mono-official-stable.list \ 
    && apt update \
    && apt -y install zip \
    && apt -y install mono-devel \
    && curl -o /usr/local/bin/nuget.exe https://dist.nuget.org/win-x86-commandline/latest/nuget.exe \
    && apt update \
    && apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt update \
    && apt -y install docker-ce docker-ce-cli containerd.io