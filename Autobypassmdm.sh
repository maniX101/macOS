#!/bin/bash
#--------------------------------------------------------------------------------------------------------------
echo ""
echo -e "Auto Tools for MacOS"
echo ""
echo -e "Author ManiX"
echo ""
dscl_path='/Volumes/macOS/private/var/db/dslocal/nodes/Default'
# Create user
echo -e "Enter Real name (Default: Mani)"
read realName
realName="${realName:-Mani}"
#realName="Manivannan"
echo -e "Enter User name (Default: Mani)"
read username
username="${username:-Mani}"
#username="Manivannan"
echo -e "Enter password (default: 123456)"
read passw
passw="${passw:-123456}"
#passw="123456"
dscl -f "$dscl_path" localhost -create "/Local/Default/Users/$username"
dscl -f "$dscl_path" localhost -create "/Local/Default/Users/$username" UserShell "/bin/zsh"
dscl -f "$dscl_path" localhost -create "/Local/Default/Users/$username" RealName "$realName"
dscl -f "$dscl_path" localhost -create "/Local/Default/Users/$username" UniqueID "501"
dscl -f "$dscl_path" localhost -create "/Local/Default/Users/$username" PrimaryGroupID "20"
mkdir "/Volumes/macOS/Users/$username"
dscl -f "$dscl_path" localhost -create "/Local/Default/Users/$username" NFSHomeDirectory "/Users/$username"
dscl -f "$dscl_path" localhost -passwd "/Local/Default/Users/$username" "$passw"
dscl -f "$dscl_path" localhost -append "/Local/Default/Groups/admin" GroupMembership $username
#--------------------------------------------------------------------------------------------------------------
touch /Volumes/Data/private/var/db/.AppleSetupDone
rm -rf /Volumes/macOS/var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
rm -rf /Volumes/macOS/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
touch /Volumes/macOS/var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
touch /Volumes/macOS/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound
#--------------------------------------------------------------------------------------------------------------
echo "Done"
