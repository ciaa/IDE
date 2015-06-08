::##############################################################################
::
:: Copyright 2014, ACSE & CADIEEL
::    ACSE   : http://www.sase.com.ar/asociacion-civil-sistemas-embebidos/ciaa/
::    CADIEEL: http://www.cadieel.org.ar
::
:: This file is part of CIAA Firmware.
::
:: Redistribution and use in source and binary forms, with or without
:: modification, are permitted provided that the following conditions are met:
::
:: 1. Redistributions of source code must retain the above copyright notice,
::    this list of conditions and the following disclaimer.
::
:: 2. Redistributions in binary form must reproduce the above copyright notice,
::    this list of conditions and the following disclaimer in the documentation
::    and/or other materials provided with the distribution.
::
:: 3. Neither the name of the copyright holder nor the names of its
::    contributors may be used to endorse or promote products derived from this
::    software without specific prior written permission.
::
:: THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
:: AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
:: IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
:: ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
:: LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
:: CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
:: SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
:: INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
:: CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
:: ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
:: POSSIBILITY OF SUCH DAMAGE.
::
::##############################################################################
@echo off
CD %~dp0
echo Defining version of each module to download...
call Installer_Versions.bat > Installer_Versions.log
echo Download prerequisites to create installer
call get-tools.bat > get-tools.log
echo Download cygwin...
call cyg-download.bat >  cyg-download.log
echo Install cygwin in temporal directory...
call cyg-install.bat > cyg-install.log
echo Download eclipse/JRE/plugins...
call eclipse-dl.bat > eclipse-dl.log
echo Download arm gcc embedded...
call arm-embedded-dl.bat > arm-embedded-dl.log
echo Download OpenOCD...
call openocd-dl.bat > openocd-dl.log
echo Download NSIS...
call nsis-dl.bat > nsis-dl.log
echo Download FTDI Drivers...
call FTDI-dl.bat > FTDI-dl.log
echo Download Firmware...
call Firmware-dl.bat > Firmware-dl.log
echo Download IDE4PLC...
call IDE4PLC-dl.bat > IDE4PLC-dl.log
echo Done. Press any key to end
pause
