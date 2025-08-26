FROM python:3.11

RUN mkdir -p /opt/sonarqube \
    && wget --quiet https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-6.2.1.4610-linux-x64.zip \
    && unzip sonar-scanner-cli-6.2.1.4610-linux-x64.zip \
    && mv sonar-scanner-6.2.1.4610-linux-x64/* /opt/sonarqube \
    && rm sonar-scanner-cli-6.2.1.4610-linux-x64.zip \
    && rmdir sonar-scanner-6.2.1.4610-linux-x64 \
    && apt update \
    && DEBIAN_FRONTEND='noninteractive' apt-get install -y libgtk-3-dev
