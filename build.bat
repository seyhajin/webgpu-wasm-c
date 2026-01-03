#!/bin/bash 2>nul || goto :windows

#linux & macos

emcc main.c -o webgpu.html --shell-file shell.html --use-port=emdawnwebgpu

exit

::---------------------------------------------------------------------------------
:windows

@echo off

emcc main.c -o webgpu.html --shell-file shell.html --use-port=emdawnwebgpu

exit /b