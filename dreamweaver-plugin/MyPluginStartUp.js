function addMenu() {                 
    var menuStr = '\n<menu id="MyPlugin" name="MyPlugin">'+
    '\n<menuitem id="Test1" name="Test1" file="Commands/MyPluginCommand.htm"/>'+
    '\n</menu>';

    var menuFile = dreamweaver.getConfigurationPath() + "/Menus/Menus.xml";
    var str = DWfile.read(menuFile);
    if(str.indexOf('id="MyPlugin"') == -1){
        if(str.indexOf('id="DWMenu_Help"') > -1){
            var index = str.lastIndexOf('<menu ', str.indexOf('id="DWMenu_Help"'));
            str = str.substring(0, index) + menuStr + str.substring(index);
        }
        DWfile.write(menuFile, str);
    }   
}
