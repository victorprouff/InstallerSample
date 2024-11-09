# InstallerSample

## Create Project

Créer un répertoire
```
mkdir InstallerSample
``` 

Créer la solution

```
dotnet new sln --name InstallerSample
```
Créer un nouveau dossier puis à l'intérieur créer un projet console en spécifiant la version .net8
```
mkdir InstallerSample
cd InstallerSample
dotnet new console -n InstallerSample -f net8.0
``` 

Sortez du dossier puis ajouter le projet à la solution
```
dotnet sln add InstallerSample/InstallerSample.csproj  
```

## Publish

Publier l'application
```
dotnet publish --runtime osx-arm64 -o ./release -f net8.0
```

- --runtime osx-arm64 :  permet de spécifier l'architecture utiliser
- -o ./release : Permet de préciser le chemin de sorti
- -f net8.0 : Spécifie la version .net utilisé

-a osx-arm64 
--runtime osx-x64