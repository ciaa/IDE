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
call get-tools.bat

set FTDI_INSTDIR=FTDI_Driver
set FTDI_WIN_XP_URL=http://www.ftdichip.com/Drivers/CDM/CDM%%20v2.10.00%%20WHQL%%20Certified.exe
set FTDI_WIN_7_URL=http://www.ftdichip.com/Drivers/CDM/CDM%%20v2.12.00%%20WHQL%%20Certified.exe

if not exist %FTDI_INSTDIR%\CDM_v2_12_00_WHQL_Certified.exe (
	echo Downloading Certified Win 7 FTDI VCP Drivers...
	wget "%FTDI_WIN_7_URL%" -O CDM_v2_12_00_WHQL_Certified.exe
	mkdir %FTDI_INSTDIR%
	move/Y CDM_v2_12_00_WHQL_Certified.exe %FTDI_INSTDIR%\CDM_v2_12_00_WHQL_Certified.exe
)

if not exist %FTDI_INSTDIR%\CDM_v2_10_00_WHQL_Certified.exe (
	echo Downloading Certified Win XP FTDI VCP Drivers...
	wget "%FTDI_WIN_XP_URL%" -O CDM_v2_10_00_WHQL_Certified.exe
	mkdir %FTDI_INSTDIR%
	move/Y CDM_v2_10_00_WHQL_Certified.exe %FTDI_INSTDIR%\CDM_v2_10_00_WHQL_Certified.exe
)