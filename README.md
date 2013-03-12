# grrrEnergy

### Concept
As long as I use to ignore the OS X's low-battery warning, I've decided to make a more helpful and less boring notification script.

### Description
It simply check whether or not the Mac is using the built-in battery and, if it is so, it cyclically looks at the battery level and calculates a delay based on the system's estimated battery life and the current battery level as follow:

- Charger unplugged and battery below 10% -> check and warn every ~1%
- Charger unplugged and battery below 20% -> check and warn every ~3%
- Charger unplugged and battery below 30% -> just check every ~5%
- Charger unplugged and battery above 30% -> just check every ~10%

If the estimated battery run-life isn't yet calculated or your Mac is plugged to the charger, it simply delay for one minute.

In this release the script creates a keychain in order to store and retrieve the administrator password as needed to edit the SafeSleep option as follow:

- Battery below 20% -> enable SafeSleep
- Battery above 20% -> disable SafeSleep

You may want to change the admin username (default: root) or the default hibernate mode (default: 3) by editing the properties inside the code.

Please note that the icon in the Dock will appear only the first time you launch the application.

As always, in further releases these "mechanisms" could be changed/improved.

### Requirements
- [Growl + growlnotify](http://growl.info/extras.php#growlnotify)

You may also want to modify the script in order to use Finder's dialogs instead of using Growl.
I haven't done it because I've made that script for my personal purpose (and I deserve from being distracted by dialogs).

I'm doing this script for myself which means that it should run on OS X 10.6.8; further controls/support may be added later.

### How to use
At the moment you have to open the script and save it as "Application" with the "Stay open" checkbox enabled and run it manually or by adding it to the startup applications when you log into your user account.

### Status
You may find comments written in Italian as I'm still working on it...

P.S: A better README file could be added later (as well as the script; who is going to be improved... I hope).