# WSL Config

Documentación WSL
https://learn.microsoft.com/es-es/windows/wsl/

Prerrequisitos
https://learn.microsoft.com/es-es/windows/wsl/install#prerequisites

Documentación de instalación
https://learn.microsoft.com/es-es/windows/wsl/install

Documentación del entorno
https://learn.microsoft.com/es-es/windows/wsl/setup/environment

VS Code + WSL
https://learn.microsoft.com/es-es/windows/wsl/tutorials/wsl-vscode

Git + WSL
https://learn.microsoft.com/es-es/windows/wsl/tutorials/wsl-git

Bases de datos + WSL
https://learn.microsoft.com/es-es/windows/wsl/tutorials/wsl-database

Docker + WSL
https://learn.microsoft.com/es-es/windows/wsl/tutorials/wsl-containers

Mejorar rendimiento
https://learn.microsoft.com/es-es/windows/wsl/tutorials/gpu-compute

NodeJS + WSL
https://learn.microsoft.com/es-es/windows/dev-environment/javascript/nodejs-on-wsl

Cómo trabajar con los sistemas de archivos
https://learn.microsoft.com/es-es/windows/wsl/filesystems

Trabajar con Javascript
https://learn.microsoft.com/es-es/windows/dev-environment/javascript/

Trabajar con Python
https://learn.microsoft.com/es-es/windows/python/

Trabajar con Docker
https://learn.microsoft.com/es-es/windows/dev-environment/docker/overview

Trabajar con Rust
https://learn.microsoft.com/es-es/windows/dev-environment/rust/

Documentación de Visual Studio Code
https://code.visualstudio.com/docs

# WSL primer inicio

Actualización de paquetes

```bash
sudo apt update && sudo apt upgrade
sudo apt-get update && sudo apt-get upgrade
```

***Paso adicional:***
*Algunas distribuciones de WSL en Linux carecen de bibliotecas que el servidor de VS Code requiere para iniciarse. Puede agregar bibliotecas adicionales a la distribución de Linux mediante su administrador de paquetes.*

```bash
sudo apt-get install wget ca-certificates
```

