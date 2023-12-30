# fundamentosDataScience
Hola! Bienvenido al repositorio de archivos para el curso de Fundamentos de Python para la Ciencia de Datos.

## Configuración del entorno de trabajo y uso de éste repositorio

Por favor realiza los siguientes pasos para configurar exitosamente tu entorno de trabajo.

1. Instalar el manejador de paquetes Chocolatey ejecutando el siguiente comando en una ventana PowerShell con permisos de administrador:
```bat
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```  
2. Asegúrate de haber ejecutado [setup-cursos.bat](https://1drv.ms/u/s!Ah0vKaVQL5gIjrJn3IwatfmQV1m0SQ?e=zkLUqS) en una ventana PowerShell con permisos de administrador.
3. Reiniciar la PC para que los cambios se procesen por el sistema.
4. Realizar un git clone de éste repositorio
5. Ejecutar make inicializar para la configuración de los requerimientos del entorno
