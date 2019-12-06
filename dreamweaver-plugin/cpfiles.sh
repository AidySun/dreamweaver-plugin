
userinstallfolder=~/Library/Application\ Support/Adobe/Dreamweaver\ 2020/en_US
installfolder="/Applications/Adobe Dreamweaver 2020"

rm "$installfolder/configuration/Startup/MyPluginStartUp.js" "$installfolder/configuration/Startup/MyPluginStartup.htm"  "$installfolder/configuration/Commands/MyPluginCommand.htm" "$installfolder/configuration/Floaters/MyPluginFloater.htm" ~/Library/Application\ Support/Adobe/Dreamweaver\ 2020/en_US/Configuration/Commands/MyPluginCommand.htm ~/Library/Application\ Support/Adobe/Dreamweaver\ 2020/en_US/Configuration/Floaters/MyPluginFloater.htm


cp ./MyPluginStartUp.js "$installfolder/configuration/Startup/"
cp ./MyPluginStartup.htm "$installfolder/configuration/Startup/"
cp ./MyPluginCommand.htm "$userinstallfolder/configuration/Commands/"
cp ./MyPluginFloater.htm "$userinstallfolder/configuration/Floaters/"
		
