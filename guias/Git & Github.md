# Documentación oficial de Git
https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control

# Git cheatsheet

https://www.interviewbit.com/git-cheat-sheet/#install-git

# Github SSH

https://docs.github.com/en/authentication/connecting-to-github-with-ssh

# Git aliases para Oh my Zsh
https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git

# .gitconfig

El archivo `.gitconfig` se puede ubicar en dos lugares diferentes: a nivel de usuario o a nivel de repositorio.

1. **A nivel de usuario**: Este archivo se encuentra en el directorio raíz de tu perfil de usuario. Por ejemplo, en sistemas basados en Unix (Linux, macOS), la ruta predeterminada es `~/.gitconfig`. En Windows, la ruta puede ser `%USERPROFILE%\.gitconfig`.

2. **A nivel de repositorio**: También puedes tener un archivo `.gitconfig` específico para un repositorio en particular. Este archivo se encuentra dentro del directorio del repositorio Git, pero se nombra como `.git/config`.

Aquí hay un resumen de las ubicaciones:

- **A nivel de usuario**: 
  - Unix/Linux/macOS: `~/.gitconfig`
  - Windows: `%USERPROFILE%\.gitconfig`

- **A nivel de repositorio**: `[ruta-al-repositorio]/.git/config`

La configuración en el archivo `.gitconfig` a nivel de usuario se aplica globalmente a todos los repositorios Git en tu sistema, mientras que la configuración en el archivo `.git/config` de un repositorio específico se aplica solo a ese repositorio en particular.

```
[user]
    name = Tu Nombre               # Tu nombre completo, usado en los commits.
    email = tu.email@example.com   # Tu email, usado también en los commits.
    #signingkey = TU-CLAVE-GPG      # Clave GPG para firmar tus commits. Comentado por ahora, útil para verificación de autoría.

[alias]
    st = status                    # Simplifica el comando `git status`.
    ci = commit                    # Simplifica el comando `git commit`.
    br = branch                    # Simplifica el comando `git branch`.
    co = checkout                  # Simplifica el comando `git checkout`.
    df = diff                      # Simplifica el comando `git diff`.
    lg = log --graph --decorate --oneline --abbrev-commit --all  # Mejora la visualización del historial de commits.

[core]
    editor = vim                   # Establece Vim como el editor por defecto para Git.
    #editor = code --wait         # Opción para usar Visual Studio Code como editor. Descomentar si se prefiere usar VSCode.
    excludesfile = ~/.gitignore_global  # Archivo global para patrones de ignorados.
    autocrlf = input               # En sistemas Unix, evita conversión automática en checkout; los commits convierten CRLF a LF si se introducen.
    #autocrlf = true              # En sistemas Windows, convierte LF a CRLF en checkout y CRLF a LF en commit. Recomendado para asegurar consistencia de finales de línea en repositorios compartidos con Unix.
    whitespace = fix,-indent-with-non-tab,trailing-space,cr-at-eol  # Configuración para manejar espacios en blanco automáticamente.

[color]
    ui = auto                      # Activa colores en la salida de la consola para mejorar la legibilidad.

[commit]
    #gpgsign = true                 # Activa la firma GPG para todos los commits por defecto. Comentado, útil para añadir seguridad y autenticidad.

[push]
    default = simple               # Configura el modo más seguro para hacer push, solo empuja la rama actual. Previene errores al empujar a ramas incorrectas.

[rerere]
    enabled = true                 # Habilita la reutilización de resoluciones de conflictos anteriores. Ahorra tiempo y mantiene consistencia en conflictos recurrentes.

[fetch]
    prune = true                   # Elimina referencias locales a ramas remotas que ya no existen. Mantiene limpio el repositorio y evita referencias obsoletas.

[init]
    defaultBranch = main           # Define 'main' como el nombre predeterminado para la rama inicial en nuevos repositorios.

[help]
    autocorrect = 1               # Autocorrige comandos mal escritos tras un segundo.

[interactive]
    diffFilter = diff-highlight    # Mejora visual de las diferencias en modo interactivo.

[filter "lfs"]
    clean = git-lfs clean -- %f
    smudge = git-lfs smudge -- %f
    process = git-lfs filter-process
    required = true

```

## .gitignore

Página para crear templates: https://www.toptal.com/developers/gitignore

Aplicar los cambios del .gitignore a mi proyecto

```bash
git rm -r --cached .
git add .
git commit -m "Untrack files specified in .gitignore"
```

