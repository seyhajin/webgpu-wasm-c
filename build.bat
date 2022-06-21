#!/bin/bash 2>nul || goto :windows

#linux & macos

emcc main.c -o webgpu.html --shell-file shell.html -s USE_WEBGPU=1

exit

::---------------------------------------------------------------------------------
:windows

@echo off

emcc main.c -o webgpu.html --shell-file shell.html -s USE_WEBGPU=1

exit /b