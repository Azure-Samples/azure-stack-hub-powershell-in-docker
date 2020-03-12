FROM mcr.microsoft.com/windows/servercore:ltsc2019
MAINTAINER Matt Briggs (mabriggs@microsoft.com)

COPY azure-stack-install-ps.ps1 c:/install/
RUN powershell c:/install/azure-stack-install-ps.ps1