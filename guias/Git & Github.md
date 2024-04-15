# Documentación oficial de Git
https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control

# Git cheatsheet

https://www.interviewbit.com/git-cheat-sheet/#install-git

# Github SSH

https://docs.github.com/en/authentication/connecting-to-github-with-ssh

# Comandos más utilizados

| S. No | Command Name                                  | Use                                                          |
| :---- | :-------------------------------------------- | :----------------------------------------------------------- |
| 1     | git init                                      | Initialise a local Git Repository                            |
| 2     | git add.                                      | Add one or more files to the staging area                    |
| 3     | git commit -m “Commit Message”                | Commit changes to the head but not to the remote repository. |
| 4     | git status                                    | Check the status of your current repository and list the files you have changed. |
| 5     | git log                                       | Provides a list of all commits made on a branch              |
| 6     | git diff                                      | View the changes you have made to the file                   |
| 7     | git push origin <branch name>                 | Push the branch to the remote repository so that others can use it. |
| 8     | git config --global user.name “Name”          | Tell Git who you are by configuring the author name          |
| 9     | git config --global user.email user@email.com | Tell Git who you are by configuring the author email id.     |
| 10    | git clone <repository_name>                   | Creates a Git repository copy from a remote source           |
| 11    | git remote add origin <server>                | Connect your local repository to the remote server and add the server to be able to push it. |
| 12    | git branch <branch_name>                      | Create a new branch                                          |
| 13    | git checkout <branch_name>                    | Switch from one branch to another                            |
| 14    | git merge <branch_name>                       | Merge the branch into the active branch                      |
| 15    | git rebase                                    | Reapply commits on top of another base tip                   |
| 16    | git checkout -b <branch_name>                 | Creates a new branch and switch to it                        |
| 17    | git stash                                     | Stash changes into a dirty working directory                 |
| 18    | git pull                                      | Update local repository to the newest commit                 |
| 19    | git revert <commit_id>                        | Revert commit changes                                        |
| 20    | git clean -n                                  | Shows which files would be removed from working directory. Use the -f flag in place of the -n flag to execute the clean. |
| 21    | git log --summary                             | View changes (detailed)                                      |
| 22    | git diff HEAD                                 | Show difference between working directory and last commit.   |
| 23    | git log --oneline                             | View changes (briefly)                                       |
| 24    | git reflog                                    | Show a log of changes to the local repository’s HEAD. Add --relative-date flag to show date info or --all to show all refs. |
| 25    | git rebase -i <base>                          | Interactively rebase current branch onto <base>. Launches editor to enter commands for how each commit will be transferred to the new base. |
| 26    | git restore --staged <file_name>              | Resetting a staged file                                      |
| 27    | git rm -r [File_name]                         | Remove a file (or folder)                                    |
| 28    | git config --list                             | List all variables set in config file, along with their values |
| 29    | git branch -d <local_branch>                  | Delete local branch in Git                                   |
| 30    | git push -d <remote_name> <branch_name>       | Delete remote branch in Git                                  |
| 31    | git stash pop                                 | Unstash the changes                                          |
| 32    | git commit -am                                | The -am along with the command is to write the commit message on the command line for already staged files. |
| 33    | git commit -ammend                            | The amend is used to edit the last commit. Incase we need to change the last committed message, this command can be used. |
| 34    | git rm                                        | The git rm command is used to remove or delete files from working tree and index. |
| 35    | git pull --rebase                             | Git rebase is used to rewrite commits from one branch to another branch. |
| 36    | git merge --squash                            | The squash along with git merge produces the working tree. It indexes in the same way as that of the real merge, but discards the merge history. |
| 37    | git revert -e <commit_id>                     | edit the commit mesage before reverting, -e is used for the same. |
| 38    | git bisect                                    | Git bisect goes through all the previous commit and uses binary search to find the bugged commit. |
| 39    | git blame                                     | git blame is used to know who/which commit is responsible for the lastest changes in the repository. |
| 40    | git cherry-pick                               | Choosing a commit from one branch and applying it to another is known as cherry picking in Git. |

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

