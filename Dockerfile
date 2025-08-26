FROM python:3.11

RUN wget --quiet https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-6.2.1.4610-linux-x64.zip \
    && unzip sonar-scanner-cli-6.2.1.4610-linux-x64.zip -d /opt/sonarqube \
    && rm sonar-scanner-cli-6.2.1.4610-linux-x64.zip \
    && apt update
