#!/bin/sh
#
# Starts the avalonia playground app in /opt/publish/
#

cd /opt/publish

echo TIMAMI_NET start AvaloniaPlayground

/usr/share/dotnet-runtime-7.0.14/dotnet AvaloniaPlayground.Desktop.dll --drm