# Simple template for new projects

Use this to start new projects with a simple folder structure and some helpfull files for the start

## Dummy File
The file names **BLANKO** is a placeholder to keep the folders for git commits
In some directories is a README.md file for brief description of the folder content

## Folders
- Assets_Raw
- Builds
- Docs
- Example_Projects
- Game
- script_templates
- Optionale_Addons


### 1. Assets_Raw: 
  - Put your asset collection here, before you decide which one you will use.
  - You can sort the file to some kind for use like fonts, sounds, grafics and so on.

### 2. Builds: 
  - Put your GODOT exports here in the subfolder for the targetplattform
  - Seperate the build for every plattform e.g. Windows, Linux or Web

### 3. Docs: 
  - Store your documents here.
  - Every kind of documentation like Game Design Documents oder programing guidline.
  - Collection for helpful resources like links Video Tutorials
    - Subfolder CodeSnippets. You can place your snippets here.

### 4. Example_projects:
  - Put some referenzes or samples here for examining the source

### 5. Game: 
  - This is your folder for the development.
  - The Folderstructure here is for file per entitie not for types

### 5.1. Subfolders in Gamefolder
  - **Addons, script_templates** are folders for the Gameengine. You can put some extensions or helper under the Addon folder.
You can also put some script templates for easier access for new scripts from the editor. Place youre templates to the script_templates folder.

When you will use scripts in Autoload aka Singletons put your scripts in the also named folder.

Give each entities there own folder.

- Entities
  - Player
    - Sound
    - Sprites
    - Animations
    - Scenes
    - ...
  - Enemy
    - Sound
    - Sprites
    - Animations
    - Scenes
    - ...

### 5.2 Vom automatischen Import ausgeschlossene Ordner.
In einigen Ordner existiert ein .gdignore. Diese Datei bewirkt das die Engine Dateien nicht automatisch importiert und diese Ordner nicht in der Datei??bersicht im Editor angezeigt wird.

### Optionale Addons
Hier k??nnen Addons abgelegt werden die f??r ein Projekt interessant sind. Eine Beschreibung der abgelegten Addons ist in der beigef??gten [README](./Optional_Addons/README.md) enthalten.
