Dim WshShell, WshSysEnv, FileSysObj, UserName, SpotSource, FolderDate, SpotDest, TheFolder, TheFiles, SpotFile, SpotFolder, Splashit

Set WshShell = CreateObject("WScript.Shell")
Set WshSysEnv = WshShell.Environment("PROCESS")
Set FileSysObj = CreateObject("Scripting.FileSystemObject")

'Show splash screen
Splashit = "Spotlight Image Finder is gathering the details..." & vbCrLf & vbCrLf & vbCrLf & vbCrLf & "      Created by Saurav Bhandari"
Dummy = WshShell.popup(Splashit, 3,"Spotlight Image Finder")

'Get the path to the Spotlight source folder
UserName = WshSysEnv("HOMEPATH")
SpotSource = "C:" & UserName & "\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets"

'Create the Spotlight destination folder
FolderDate = Month(Now) & "-" & Day(Now) & "-" & Year(Now)
SpotDest = "C:" & UserName & "\Pictures\SpotLightPictures"

'Check to see if it already exisits
If FileSysObj.FolderExists(SpotDest & "\" & FolderDate) Then
     Msgbox "You've already created a Spotlight folder today!", 0, "Spotlight Image Finder"
     Call ShowEm
     Wscript.Quit
End If

'Continue creating the Spotlight destination folder
If FileSysObj.FolderExists(SpotDest) Then
    FileSysObj.CreateFolder(SpotDest & "\" & FolderDate)
Else
    FileSysObj.CreateFolder(SpotDest)
    FileSysObj.CreateFolder(SpotDest & "\" & FolderDate)
End If

'Copy the Spotlight files from the source to destination folder
SpotDest = SpotDest & "\" & FolderDate
FileSysObj.CopyFile SpotSource & "\*.*", SpotDest

'Rename all the Spotlight files with a .jpg extenstion
WshShell.CurrentDirectory = SpotDest

Set TheFolder = FileSysObj.GetFolder(SpotDest)
Set TheFiles = TheFolder.Files

For Each SpotFile in TheFiles
   SpotFile.name = SpotFile.name & ".jpg"
Next

Call ShowEm

'Show the Spotlight files
Sub ShowEm
  SpotFolder = "Explorer.exe /n,/e," & SpotDest
  WshShell.Run SpotFolder, 1, False
End Sub 'ShowEm

Wscript.Quit