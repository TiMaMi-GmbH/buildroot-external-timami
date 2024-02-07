# .NET Buildroot external tree
This repository is a Buildroot BR2_EXTERNAL tree dedicated to supporting .NET on various platforms.
This BR2_EXTERNAL tree provides example configurations demonstrating how to use .NET on the STM32MP1 platform and on RaspberryPi 3.

## What is this?
A BR2_EXTERNAL tree is a way to customize [Buildroot](https://buildroot.org/) for a project without altering Buildroot itself. You can read more about this topic in the official buildroot mirror on gitlab ([HERE](https://gitlab.com/buildroot.org/buildroot/-/blob/master/docs/manual/customize-outside-br.adoc)).

This repository contains such an external project tree with board configurations and aditional packages.
With these packages you can create:

- Installable Buildroot Linux image
- .NET runtime
- ASP.NET runtime
- Avalonia UI cross platform example application

## Getting started
You can find the instructions on how to set up the included example configurations [HERE](GettingStarted.md)

## Contents

### Configuration Examples
Basic configurations activating the full ASP.NET framework package and an [Avalonia UI](https://avaloniaui.net/) example application for following boards:
- [Raspberry Pi 3 Model B](https://www.raspberrypi.com/products/raspberry-pi-3-model-b/)
- [STM32MP157F](https://www.st.com/en/microcontrollers-microprocessors/stm32mp157f.html)

### Package .NET runtime
This package downloads the .NET version 7.0.14 runtime from the official [Microsoft homepage](https://dotnet.microsoft.com/en-us/download/dotnet/7.0) and installs it into your buildroot image so you can use the `dotnet` command on your command line.

This package supports the following platforms:
- linux-musl-x64
- linux-x64
- linux-arm
- linux-musl-arm64
- linux-arm64

### Package ASP.NET runtime
This package downloads the ASP.NET version 7.0.14 runtime from the official [Microsoft homepage](https://dotnet.microsoft.com/en-us/download/dotnet/7.0) and installs it into your buildroot image so you can use the `dotnet` command on your command line. The runtime from Microsoft already contains the full .NET runtime, so you can install only one of the two packages.

This package supports the following platforms:
- linux-musl-x64
- linux-x64
- linux-arm
- linux-musl-arm64
- linux-arm64

### Package Avalonia example
This package contains an example of an [Avalonia UI](https://avaloniaui.net/) cross-platform application. The application will be installed into the `/opt/` directory of your Buildroot image. And will be set to automatically start upon boot.
The application will run on a framebuffer device, so no desktop environment needs to be installed. The downside is, that there is [no support for mouse or keyboard](https://github.com/AvaloniaUI/Avalonia/issues/2920) on Avalonia framebuffer applications right now, so you need to have a touchscreen attached to your device to actually interact with the application. When started from a desktop framework like X11 you will have full support for mouse and keyboard.

This application supports the following platforms:
- linux-musl-x64
- linux-x64
- linux-arm
- linux-arm64

## Contact Us
For further information you can contact us on our website [https://timami.de/](https://timami.de/) or send us an email to contact@timami.de
