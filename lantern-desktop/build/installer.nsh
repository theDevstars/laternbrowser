!macro customInstall
  WriteRegStr HKCU "Software\Clients\StartMenuInternet\Lantern" "" "Lantern"
  WriteRegStr HKCU "Software\Clients\StartMenuInternet\Lantern\Capabilities" "ApplicationName" "Lantern"
  WriteRegStr HKCU "Software\Clients\StartMenuInternet\Lantern\Capabilities" "ApplicationDescription" "Lantern web browser"
  WriteRegStr HKCU "Software\Clients\StartMenuInternet\Lantern\Capabilities\URLAssociations" "http" "LanternURL"
  WriteRegStr HKCU "Software\Clients\StartMenuInternet\Lantern\Capabilities\URLAssociations" "https" "LanternURL"
  WriteRegStr HKCU "Software\Clients\StartMenuInternet\Lantern\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}"'
  WriteRegStr HKCU "Software\RegisteredApplications" "Lantern" "Software\Clients\StartMenuInternet\Lantern\Capabilities"
  WriteRegStr HKCU "Software\Classes\LanternURL" "" "Lantern URL"
  WriteRegStr HKCU "Software\Classes\LanternURL" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\LanternURL\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend
!macro customUnInstall
  DeleteRegKey HKCU "Software\Clients\StartMenuInternet\Lantern"
  DeleteRegValue HKCU "Software\RegisteredApplications" "Lantern"
  DeleteRegKey HKCU "Software\Classes\LanternURL"
!macroend
