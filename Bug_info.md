# Dreamweaver 20.0 crashes on macOS after invoking PopupMenu.popup() in plugin

## Bug description
Adobe Dreamweaver crashes after invoke the `popup()` function of `PopupMenu` in extented plugin.

What the button does :
```javascript
function showPopupMenu() {
	var popupMenu = new PopupMenu(); 
	popupMenu.addItem("Menu Item 2");
	var r = popupMenu.popup(); // <- this is the cause
}
```

Brief log:
```
Thread 0 Crashed:: CrBrowserMain  Dispatch queue: com.apple.main-thread
0   com.adobe.dreamweaver-18.1    	0x00000001116020e0 CImplBase::DestroyWindow() + 64
1   com.adobe.dreamweaver-18.1    	0x00000001115ec1ae CWnd::~CWnd() + 126
2   libsystem_c.dylib             	0x00007fff74403ef2 __cxa_finalize_ranges + 351
3   libsystem_c.dylib             	0x00007fff744041de exit + 55
4   libdyld.dylib                 	0x00007fff7435aee0 start + 8
```

## Platform
macOS 10.14 and 10.15. 
It didn't occur on Windows so far.

## Frequency of the issue
Everytime.

## Steps to reproduce

1. Copy `MyPluginStartup.htm` and `MyPluginStartUp.js` to  `/Applications/Adobe Dreamweaver 2020/configuration/Startup/`
2. Copy `MyPluginCommand.htm` `/Applications/Adobe Dreamweaver 2020/configuration/Commands/`
3. Copy `MyPluginFloater.htm` `/Applications/Adobe Dreamweaver 2020/configuration/Floaters/`
4. Launch Dreamweaver 2020
5. Click menu `MyPlugin->Test1`
![](1.png)
6. Click the button on panel `MyPlugin`
![](2.png)
7. Quit Dreamweaver
8. Crash
![](3.png)

## Attachments

* Plugin files to reproduce the issue.
* Crash log.

## Contact 

aidys@opentext.com

## Bug reported
https://dreamweaver.uservoice.com/forums/382851-adobe-dreamweaver-bugs/suggestions/39198865-dreamweaver-20-0-crashes-on-macos-after-invoking-p
