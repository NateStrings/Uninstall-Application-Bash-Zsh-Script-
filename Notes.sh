#!bin/bash

#This is going to primarily be note taking for myself. This is mostly aimed at remote Admins that are wanting to uninstall software from client machines.
#If you learn something from the process. I see that as an absolute win as well.

  Sudo apt-get remove *app name* #Sudo for admin rights, apt-get is a tool to help manage package. But theres a big chance a user won't have "apt-get on their machine
  

#The solution is a bit different for each software and if they have an uninstall script in there software somewhere, probably easiest to use that. An example -

sudo sh /Applications/DNS\\ Agent.app/Contents/Resources/uninstall.sh #It's simple and it doesn't ruin your machine trying to get it off. 

#Most importantly, the settings of the application that has this shell script ALSO happened to change the DNS settings on the machine. Trying to brute force it off,
#-- I've tried, left parts of the software behind that would knock a user offline because it was trying to point the user somewhere else.

  /Library/Application\\ Support/Sophos/saas/Installer.app/Contents/MacOS/tools/\n\n
  #\n\n
  /InstallationDeployer --remove --tamper_password #insert password here
  
 #This example is for Sophos. It also happens to require a tamper password everytime you want to uninstall it or else you'll trouble getting everything off.
 
 #A completely different example. The original software I was trying to uninstall had official documentation giving a method that didn't work on a clean lab machine.
 #Talking with their engineers they said the docs were out of date and gave me this instead. Sometimes Docs also suck.

  rm -rf /Applications/Keeper\ Password\ Manager.app && rm -rf ~/Library/Application\ Support/Keeper\ Password\ Manager 
