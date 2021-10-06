FROM mcr.microsoft.com/azure-cli

LABEL "com.github.actions.name"="azure-fileshare-upload2"
LABEL "com.github.actions.description"="Uploads folders to Azure File Share"
LABEL "com.github.actions.icon"="arrow-up"
LABEL "com.github.actions.color"="green"
LABEL "repository"="https://github.com/AthleticNet/azure-fileshare-upload"
LABEL "homepage"="https://github.com/AthleticNet/azure-fileshare-upload"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
