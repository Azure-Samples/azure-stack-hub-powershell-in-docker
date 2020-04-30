---
page_type: sample
languages:
- powershell
products:
- azure-stack-hub
---

# Azure Stack Hub PowerShell

This repository contains a Dockerfile and script to get you up and running with [Azure Stack Hub](https://docs.microsoft.com/en-us/azure-stack) compatible PowerShell isolated in a Docker container.

PowerShell provides a programmatic way to interact with the Azure Resource  Manager. You can either work with an interactive command prompt or write scripts if you are automatic tasks.

If you spend much time working with Azure Stack Hub PowerShell, you probably find yourself installing and reinstalling the modules over and over gain. This can be particularly annoying if you are working with global Azure at the same time since you will need to uninstall and reinstall your modules depending on your target.

This repo contains a Dockerfile that will install the Azure Stack Hub module the commonly used GitHub tools in the [Azure Stack Hub Tools](https://github.com/Azure/AzureStack-Tools).

## Prerequisites

- You will need to have [Docker](https://docs.docker.com/install/) installed if you would like to use the Docker File.
- You will need to run Docker using Windows containers which will require Windows 10. When running Docker, switch to Windows containers.
- You will also want to have access to Azure Stack Hub. Azure Stack Hub is a version of Azure that can run on-premises within a local datacenter. You can read more about [Azure Stack Hub at Microsoft.com](https://azure.microsoft.com/overview/azure-stack/). 

## Use the Dockerfile

The Dockerfile opens the Microsoft image [microsoft/windowsservercore](https://hub.docker.com/_/microsoft-windows-servercore) which has Windows PowerShell 5.1 installed. The file then loads Nuget, the Azure Stack Hub PowerShell modules, and grabs the tools from Azure Stack Hub Tools.

1. Download this Repo as a ZIP or clone the repo.
2. Open the repo folder from your terminal.
3. Type: 
    ```
    docker build --tag azure-stack-powershell .
    ```
4. When the image has been built, you can start an interactive container. Type:
    ```
    docker run -it azure-stack-powershell powershell
    ```
5. The shell is ready for your cmdlets.
    ```
    Windows PowerShell
    Copyright (C) 2016 Microsoft Corporation. All rights reserved.

    PS C:\>
    ```

## Next steps

You read more using PowerShell on Azure Stack Hub in the article, "[Install PowerShell for Azure Stack Hub](https://docs.microsoft.com/en-us/azure-stack/operator/azure-stack-powershell-install)."