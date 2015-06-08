Scripts que descargan y preparan los componentes del instalador
===============================================================

Prerequisitos
-------------
 Windows XP o superior

(Actualizar de ser necesarias las versiones a ser descargadas en el archivo Installer_Versiones.bat)
Ejecute prepare.bat en una consola de windows abierta como administrador (Run as administrator...) y espere a que termine.
Esto crear� las carpetas
 * local-repo Repo local donde se encuentran los paquetes requeridos para instalar cygwin
 * cygwin Directorio de instalaci�n de cygwin (debe habilitar la linea "rem cyg-install.bat" en el archivo prepare.bat)
 * eclipse-cdt conteniendo el JRE
 * arm-none-eabi-gcc desde launchpad
 * Firmware desde el repositorio de CIAA-Firmware (Clone o Copia del tag)
 * FTDI_Driver
 * usbdriver
 * NSIS
 * IDE4PLC desde el repositorio de CIAA-IDE4PLC, mediante zip del tag correspondiente
 * openocd desde el repositorio de freddy chopins
 * Testcase de compilacion de linea de comandos

Luego crear el instalador:
 * Copiar Config_Installer_CIAA_IDE_Suite.config como Config_Installer_CIAA_IDE_Suite.nsh y definer que secciones y archivos quiere incluir
 * Ejecutar make-installer.bat en la consola y esperar un rato a que termine...el archivo Setup_CIAA_IDE_Suite_vX_Y_Z.exe se crear� en esta carpeta.

TODO
----
 - Realizar un *.ini con los par�metros de eclipse correspondientes
 - workspace por defecto, perspectiva a usar -cdt-, etc.)
 - Realizar *.ini de instalaci�n del driver
 - Expandir testcases de las herramientas luego de instalar
