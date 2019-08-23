# SmartRPA MC Clean Empty Folders #

Do you have empty folders messing up your Management Console project in Design Studio?

Run `SmartRPA_MC_CleanEmptyFolders.robot` and set:

 * URL to ManagementConsole (ex. `http://server:8080/ManagementConsole/`).
 * Username/password for a user with access to delete folders on the wanted projects.
 * RegEx, that a project must match to have its empty folders cleaned (ex: `.*Sandbox.*`).
 
The robot will then use the Repository REST API, to find and delete the empty folders.