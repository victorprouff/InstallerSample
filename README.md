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
dotnet publish --runtime osx-arm64 -o ./dist -f net8.0 --self-contained
```

- --runtime osx-arm64 :  permet de spécifier l'architecture utiliser
- -o ./release : Permet de préciser le chemin de sorti
- -f net8.0 : Spécifie la version .net utilisé
- --self-contained : Contient tout ce dont à besoin l'application pour s'exécuter y compris le framework .net
-a osx-arm64 
--runtime osx-x64

## Brew

tar -cvf InstallerSample-1.0.0.tar.gz ./dist

shasum -a 256 InstallerSample-1.0.0.tar.gz | awk '{printf $1}'

a0f2c3b14c681dbbc831eeccf99812843167162bae1984bc988fd1ea8e323bd5%

gh release create v1.0.0 ./InstallerSample-1.0.0.tar.gz --title "0.0.1" --generate-notes

brew tap victorprouff/InstallerSample


# Process
Update codes
Upgrade version everywhere

publish :
dotnet publish --runtime osx-arm64 -o ./dist -f net8.0 --self-contained
create archive
tar -cvf installersample-1.0.2.tar.gz ./dist
create shasum
shasum -a 256 installersample-1.0.2.tar.gz | awk '{printf $1}'
récupérer clé et upgrade InstallerSample.rb
Push new version repos
Create new Release
gh release create v1.0.2 ./installersample-1.0.2.tar.gz --title "1.0.2" --generate-notes

## Sources

- https://howinteresting.co.uk/blog/2024-05-15-distributing-tools-with-brew-and-github-actions-part-i/

